import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/model/grocery_item.dart';
import 'package:groceryapp/pages/home/widget/shooping_list_dialog.dart';
import 'package:groceryapp/pages/user_list_details/user_list_details.dart';
import 'package:groceryapp/pages/user_list_details/utils/user_list_arguments.dart';
import 'package:groceryapp/widgets/loading_indicator.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
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
      body: Consumer<AppModel>(
        builder: (context, appModel, child) {
          return FutureBuilder(
              future: appModel.getSavedLists(),
              builder: (context, AsyncSnapshot<List<GroceryItem>> snapshot) {
                if (!snapshot.hasError && snapshot.hasData) {
                  if (snapshot.data.isEmpty) {
                    return Center(
                      child: Image.asset('img/empty.png'),
                    );
                  }
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
                return LoadingIndicatorWidget();
              });
        },
        child: LoadingIndicatorWidget(),
      ),
    );
  }
}
