import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';
import 'package:groceryapp/pages/add_items_detail/utils/details_utils.dart';
import 'package:groceryapp/pages/add_items_detail/widgets/items_details_widget.dart';
import 'package:groceryapp/repository/repository.dart';

class AddItemsDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AddDetailsArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de ${getHeader(args.categoryName)}'),
      ),
      body: FutureBuilder(
          future: Repository.getAllGroceries(),
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
          }),
    );
  }
}

