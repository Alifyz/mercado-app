import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/add_items/add_items.dart';
import 'package:groceryapp/pages/add_list/add_list.dart';
import 'package:groceryapp/pages/home/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationModel(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomePage(),
          '/add-list': (context) =>  AddListPage(),
          '/add-items': (context) => AddItemsPage()
        },
        title: 'GroceryListing App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
    );
  }
}
