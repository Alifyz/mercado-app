import 'package:flutter/material.dart';

class GroceryCategory extends StatelessWidget {
  const GroceryCategory({
    @required this.title,
    @required this.onDetailsScreen,
    @required this.assetPath,
  }) : assert(title != null),
       assert(onDetailsScreen != null),
       assert(assetPath != null);

  final Function onDetailsScreen;
  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GridTile(
        child: Card(
          child: InkWell(
            onTap: onDetailsScreen,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(assetPath),
                    width: 48,
                    height: 48,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(title)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
