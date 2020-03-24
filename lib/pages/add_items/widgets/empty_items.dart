import 'package:flutter/material.dart';

class EmptyItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 156,
          width: 156,
          child: Image.asset('img/empty_items.png'),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Nada por aqui, adicione novos items',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
