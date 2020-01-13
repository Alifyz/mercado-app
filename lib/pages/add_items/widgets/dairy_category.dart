import 'package:flutter/material.dart';

class DairyCategory extends StatelessWidget {
  const DairyCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('img/milk.png'),
            width: 48,
            height: 48,
          ),
          SizedBox(height: 4,),
          Text("Laticínios")
        ],
      )),
    );
  }
}