import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/pages/user_list_details/utils/user_list_arguments.dart';

class UserListDetailsPage extends StatelessWidget {

  static String route = "/user-list-details";

  @override
  Widget build(BuildContext context) {
    final UserListDetailsArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Checklist')
      ),
    );
  }
}