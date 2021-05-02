import 'dart:html';

import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  bool updateShouldNotify(_) => true;
// this is an instance of Provider Class
  final bloc = new Bloc();
  Provider(Key key, Widget child) : super(key: key, child: child);
// Static function which will be called automatically
  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType() as Provider).bloc;
  }
}
