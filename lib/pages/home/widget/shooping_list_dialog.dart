import 'package:flutter/material.dart';

const title = "Nova lista";
const inputDescription = "Nome da sua lista de compras...";
const createButtonText = "CRIAR";
const cancelButtonText = "CANCELAR";

Future<void> makeDialog(BuildContext context) {
  TextEditingController _textController = TextEditingController();
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          title: Text(title),
          content: TextFormField(
            controller: _textController,
            decoration: InputDecoration(hintText: inputDescription),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(createButtonText),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/add-items');
              },
            ),
            FlatButton(
              child: Text(cancelButtonText),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      });
}
