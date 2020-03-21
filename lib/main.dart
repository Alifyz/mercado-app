import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/add_items/add_items.dart';
import 'package:groceryapp/pages/add_items/user_list_detail.dart';
import 'package:groceryapp/pages/add_items_detail/add_item_details.dart';
import 'package:groceryapp/pages/home/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomePage(),
          '/user-list': (context) => UserListPage(),
          '/add-items': (context) => AddItemsPage(),
          '/add-items-details': (context) => AddItemsDetailsPage()
        },
        title: 'GroceryListing App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
    );
  }
}
