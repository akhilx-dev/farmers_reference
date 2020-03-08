import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BootScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class BootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('The Farmer\'s Reference',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      )

    );
  }
}
