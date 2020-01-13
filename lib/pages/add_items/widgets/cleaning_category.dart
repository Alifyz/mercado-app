import 'package:flutter/material.dart';

class CleaningCategory extends StatelessWidget {
  const CleaningCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('img/cleaning.png'),
            width: 48,
            height: 48,
          ),
          SizedBox(height: 4,),
          Text("Limpeza")
        ],
      )),
    );
  }
}