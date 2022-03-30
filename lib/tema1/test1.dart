import 'package:flutter/material.dart';

void main() {
  runApp(Tema1());
}

class Tema1 extends StatelessWidget {
  const Tema1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "AAA",
            style: TextStyle(
              color: Colors.red,
              fontSize: 50.0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
            ),
          ),
          Text(
            "BBB",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 50.0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
            ),
          ),
          Text(
            "CCC",
            style: TextStyle(
                color: Colors.green,
                fontSize: 50.0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
            ),
          )
        ],
      ),
    );
  }
}