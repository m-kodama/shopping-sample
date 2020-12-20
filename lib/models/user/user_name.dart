import 'package:flutter/material.dart';

class UserName {
  UserName({@required this.name}) {
    if (name == null) {
      throw ArgumentError.notNull();
    }
    if (name.isEmpty) {
      throw ArgumentError.value(name, '空文字', 'nameは空文字ダメです');
    }
    if (name.length > 50) {
      throw ArgumentError.value(name, '最大文字数', 'nameは50文字までです');
    }
  }

  final String name;

  bool equals(UserName other) {
    if (other == null) {
      return false;
    }
    return other.name == name;
  }
}
