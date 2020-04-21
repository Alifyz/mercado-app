import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/add_items/add_items.dart';
import 'package:groceryapp/pages/add_items/user_list_detail.dart';
import 'package:groceryapp/pages/add_items_detail/add_item_details.dart';
import 'package:groceryapp/pages/home/home.dart';
import 'package:groceryapp/pages/user_list_details/user_list_details.dart';
import 'package:groceryapp/repository/repository.dart';
import 'package:provider/provider.dart';

import 'pages/add_items/user_list_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppModel(repository: Repository()),
      child: Provider(
        create: (_) => new Repository(),
        child: MaterialApp(
          onGenerateRoute: (settings) {
            if (settings.name == UserListPage.route) {
              return PageRouteBuilder(
                  pageBuilder: (_, __, ___) => UserListPage(),
                  transitionsBuilder: (context, animStart, animEnd, child) {
                    final begin = Offset(0, 0);
                    final end = Offset.zero;
                    final tween = Tween(begin: begin, end: end);
                    final offsetAnimation = animStart.drive(tween);
                    return SlideTransition(
                        position: offsetAnimation, child: child);
                  });
            }
          },
          routes: {
            HomePage.route: (context) => HomePage(),
            UserListPage.route: (context) => UserListPage(),
            UserListDetailsPage.route: (context) => UserListDetailsPage(),
            AddItemsPage.route: (context) => AddItemsPage(),
            AddItemsDetailsPage.route: (context) => AddItemsDetailsPage()
          },
          title: 'MercadoApp',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
        ),
      ),
    );
  }
}
