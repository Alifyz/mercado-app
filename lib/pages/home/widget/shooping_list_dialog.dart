import 'package:flutter/material.dart';

const title = "Nova lista";
const inputDescription = "Nome da sua lista de compras...";
const createButtonText = "CRIAR";
const cancelButtonText = "CANCELAR";

Future<void> makeDialog(BuildContext context) {
  TextEditingController _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          title: Text(title),
          content: DialogContentWidget(
            textController: _textController,
            formKey: _formKey,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(createButtonText),
              onPressed: () {
                if (_textController.text.isEmpty ||
                    _textController.text.length < 3) {
                  Navigator.pushNamed(
                    context,
                    '/user-list',
                    arguments: 'Lista genérica',
                  );
                } else {
                  Navigator.pushNamed(
                    context,
                    '/user-list',
                    arguments: _textController.text,
                  );
                }
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

class DialogContentWidget extends StatelessWidget {
  DialogContentWidget({this.formKey, this.textController});

  final TextEditingController textController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        key: formKey,
        maxLength: 12,
        controller: textController,
        decoration: InputDecoration(
          hintText: inputDescription,
          icon: Icon(Icons.list),
        ),
      ),
    );
  }
}
