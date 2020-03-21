import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';
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
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data[index].title),
                        );
                      },
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('has error'),
                    );
                  }
                }
                break;
              case ConnectionState.waiting:
                {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              default:
                {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            }
          }),
    );
  }
}

String getHeader(Category category) {
  switch (category) {
    case Category.Meat:
      return "carnes";
      break;
    case Category.Milk:
      return "laticínios";
      break;
    case Category.Cleaning:
      return "limpeza";
      break;
    case Category.Fiber:
      return "legumes";
      break;
    default:
      {
        return "items";
      }
  }
}
