import 'package:flutter/material.dart';

class ModalWidget extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.shopping_basket,
              color: Colors.green,
              size: 96,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'NOVA LISTA',
                style: TextStyle(fontSize: 21),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  return value.isEmpty || value.length <= 3
                      ? 'Nome muito curto'
                      : null;
                },
                onSaved: (value) {
                  if (value.isEmpty || value.length < 3) {
                    Navigator.pushNamed(
                      context,
                      '/user-list',
                      arguments: 'Lista genérica',
                    );
                  } else {
                    Navigator.pushNamed(
                      context,
                      '/user-list',
                      arguments: textController.text,
                    );
                  }
                },
                autofocus: true,
                controller: textController,
                maxLength: 24,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Sua lista',
                  icon: Icon(Icons.list),
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    if (textController.text.isEmpty ||
                        textController.text.length < 3) {
                      Navigator.pushNamed(
                        context,
                        '/user-list',
                        arguments: 'Lista genérica',
                      );
                    } else {
                      Navigator.pushNamed(
                        context,
                        '/user-list',
                        arguments: textController.text,
                      );
                    }
                  },
                  child: Text('SALVAR'),
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('CANCELAR'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
