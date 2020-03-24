import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/add_items/widgets/empty_items.dart';
import 'package:groceryapp/pages/home/home.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  static String route = '/user-list';

  @override
  Widget build(BuildContext context) {
    final String listName = ModalRoute.of(context).settings.arguments;
    final AppModel appModel = Provider.of<AppModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(listName),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'ADICIONAR ITEMS',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/add-items');
            },
          )
        ],
      ),
      body: Consumer<AppModel>(
        builder: (BuildContext context, AppModel value, Widget child) {
          if (value.getCurrentGroceries().isEmpty) {
            return EmptyItemsWidget();
          } else {
            return ListView.builder(
                itemCount: value.getCurrentGroceries().length,
                itemBuilder: (contex, index) {
                  return ListTile(
                    title: Text(value.getCurrentGroceries()[index].title),
                  );
                });
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await appModel.saveUserGroceriesList(
            listName,
          );
          appModel.clearList();
          Navigator.pushNamedAndRemoveUntil(
            context,
            HomePage.route,
            (Route<dynamic> route) => false,
          );
        },
        label: Text('SALVAR LISTA'),
      ),
    );
  }
}
