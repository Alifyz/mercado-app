import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/home/home.dart';
import 'package:groceryapp/repository/repository.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  static String route = '/user-list';

  @override
  Widget build(BuildContext context) {
    final String listName = ModalRoute.of(context).settings.arguments;
    final Repository repository = Provider.of<Repository>(context);
    final AppModel appModel = Provider.of<AppModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(listName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/add-items');
            },
          )
        ],
      ),
      body: Consumer<AppModel>(
        builder: (BuildContext context, AppModel value, Widget child) {
          return ListView.builder(
              itemCount: value.getCurrentGroceries().length,
              itemBuilder: (contex, index) {
                return ListTile(
                  title: Text(value.getCurrentGroceries()[index].title),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await repository.saveCurrentItems(
            listName,
            appModel.getCurrentGroceries(),
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
