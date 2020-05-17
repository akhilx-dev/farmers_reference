import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrapper{
static wrap(context,child,title){
  return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: Text('Me Title',
        style: TextStyle(color: Colors.brown)),
      ),
      child: child);

}
}