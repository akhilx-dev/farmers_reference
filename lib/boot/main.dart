import 'package:flutter/material.dart';

class Boot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The Farmer\'s Reference',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/categories');
              },
              child: Text('Go To Categories',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
