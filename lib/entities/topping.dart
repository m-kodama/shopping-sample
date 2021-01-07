import 'package:flutter/material.dart';

class Topping {
  Topping({
    @required this.id,
    @required String name,
  }) : _name = name;

  final String id;
  String _name;

  String get name => _name;

  set name(String value) {
    if (value == null) {
      throw Exception();
    }
    _name = value;
  }
}
