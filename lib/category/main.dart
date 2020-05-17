import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String arguments;
  const Category({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    print('$arguments');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Category',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold)),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop('/boot');
                },
                child: Text('Move to Boot',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}