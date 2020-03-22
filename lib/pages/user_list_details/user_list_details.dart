import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        future: repository.getGroceriesByListName(args.list.name),
        builder: (context, snapshot) {
          print(snapshot);
          return Container();
        },
      ),
    );
  }
}
