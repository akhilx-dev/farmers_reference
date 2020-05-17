import 'package:farmers_reference/utils/wrapper.dart';
import 'package:flutter/material.dart';

main(context) {
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

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Wrapper.wrap(context, main(context), routes["category"]);
  }
}
