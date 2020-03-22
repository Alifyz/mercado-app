import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/pages/user_list_details/utils/user_list_arguments.dart';
import 'package:groceryapp/repository/repository.dart';
import 'package:provider/provider.dart';

class UserListDetailsPage extends StatelessWidget {
  static String route = "/user-list-details";

  @override
  Widget build(BuildContext context) {
    final UserListDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    final Repository repository = Provider.of<Repository>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Checklist')),
      body: FutureBuilder(
        future: repository.getGroceriesByListName(args.list.listName),
        builder: (context, AsyncSnapshot<List<GroceryItem>> snapshot) {
          if (!snapshot.hasError && snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: CheckboxListTile(
                    onChanged: (setChecked) {},
                    title: Text(snapshot.data[index].title),
                    value: snapshot.data[index].isChecked,
                  ),
                );
              },
            );
          }
          print(snapshot);
          return Container();
        },
      ),
    );
  }
}
