import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/domain/grocery_list.dart';
import 'package:groceryapp/pages/home/widget/shooping_list_dialog.dart';
import 'package:groceryapp/pages/user_list_details/user_list_details.dart';
import 'package:groceryapp/pages/user_list_details/utils/user_list_arguments.dart';
import 'package:groceryapp/repository/repository.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    final Repository repository = Provider.of<Repository>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          makeDialog(context);
        },
      ),
      body: FutureBuilder(
          future: repository.getSavedLists(),
          builder: (context, AsyncSnapshot<List<GroceryItem>> snapshot) {
            if (!snapshot.hasError && snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (contex, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            UserListDetailsPage.route,
                            arguments: UserListDetailsArguments(
                              list: snapshot.data[index],
                            ),
                          );
                        },
                        title: Text(snapshot.data[index].listName),
                      ),
                    );
                  });
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
