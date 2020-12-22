import 'package:flutter/material.dart';

class FullName {
  FullName({
    @required this.firstName,
    @required this.familyName,
  });

  final String firstName;
  final String familyName;

  bool equals(FullName other) {
    if (other == null) {
      return false;
    }
    return other.firstName == firstName && other.familyName == familyName;
  }
}
