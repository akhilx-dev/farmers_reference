import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrapper{
static wrap(context,child,headerTitle){
  return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: Text(headerTitle,
        style: TextStyle(color: Colors.brown)),
      ),
      child: child);

}
}