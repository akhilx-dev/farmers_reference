import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmers_reference/boot/main.dart';
import 'package:farmers_reference/categories//main.dart';
import 'package:farmers_reference/category/main.dart';

void main() {
  runApp(CupertinoApp(
    theme: CupertinoThemeData(textTheme: CupertinoTextThemeData(primaryColor: Colors.brown)),
    home:Boot(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/boot': (BuildContext context) => Boot(),
      '/categories': (BuildContext context) => Categories(),
      '/category': (BuildContext context) => Category(),
    }
  ));
}