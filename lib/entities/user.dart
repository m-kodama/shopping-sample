import 'package:flutter/material.dart';
import 'package:shopping_sample/models/user/full_name.dart';
import 'package:shopping_sample/models/user/user_id.dart';
import 'package:shopping_sample/models/user/user_name.dart';
import 'package:shopping_sample/utils/string_util.dart';

class User {
  User({
    this.userName,
    this.name,
  }) : id = UserId(StringUtil.getRandomString(length: 8));

  User.withId({
    @required this.id,
    this.userName,
    this.name,
  });

  final UserId id;
  final UserName userName;
  final FullName name;

  set userName(UserName userName) {
    if (userName == null) {
      throw Exception();
    }
    this.userName = userName;
  }

  set name(FullName name) {
    if (name == null) {
      throw ArgumentError.notNull();
    }
    this.name = name;
  }

  bool equals(User other) {
    if (other == null) {
      return false;
    }
    return id.equals(other.id);
  }
}
