import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/user_list_details/utils/icons_utils.dart';
import 'package:groceryapp/pages/user_list_details/utils/user_list_arguments.dart';
import 'package:provider/provider.dart';

class UserListDetailsPage extends StatelessWidget {
  static String route = "/user-list-details";

  @override
  Widget build(BuildContext context) {
    final UserListDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(title: Text('Checklist')),
        body: Consumer<AppModel>(
          builder: (context, model, value) {
            return FutureBuilder(
              future: model.getGroceriesByListName(args.list.listName),
              builder: (context, AsyncSnapshot<List<GroceryItem>> snapshot) {
                if (!snapshot.hasError && snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: CheckboxListTile(
                          onChanged: (setChecked) {
                            var item = snapshot.data[index];
                            item.isChecked = setChecked;
                            model.updateUserList(item);
                          },
                          title: Text(snapshot.data[index].title),
                          value: snapshot.data[index].isChecked,
                          secondary: getIconFromcategory(
                              snapshot.data[index].category),
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
            );
          },
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}


