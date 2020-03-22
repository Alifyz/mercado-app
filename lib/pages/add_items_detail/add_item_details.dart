import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/model/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';
import 'package:groceryapp/pages/add_items_detail/utils/details_utils.dart';
import 'package:groceryapp/pages/add_items_detail/widgets/grocery_list_widget.dart';
import 'package:provider/provider.dart';

class AddItemsDetailsPage extends StatelessWidget {
  static String route = '/add-items-details';

  @override
  Widget build(BuildContext context) {
    final AddDetailsArguments args = ModalRoute.of(context).settings.arguments;
    final AppModel _appModel = Provider.of<AppModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de ${getHeader(args.categoryName)}'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'SALVAR',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: FutureBuilder(
          future: _appModel
              .getGroceriesByCategory(getQueryCategory(args.categoryName)),
          builder: (context, AsyncSnapshot<List<GroceryItem>> snapshot) {
            if (!snapshot.hasError && snapshot.hasData) {
              return GroceryListWidget(data: snapshot.data);
            }

            if (snapshot.connectionState != ConnectionState.done) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Erro ao carregar items da lista'),
              );
            }

            return Container();
          }),
    );
  }
}
