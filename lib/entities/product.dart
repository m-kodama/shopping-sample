import 'package:flutter/material.dart';
import 'package:shopping_sample/entities/topping.dart';

class Product {
  Product({
    @required this.id,
    @required String name,
    String description,
    @required String imagePath,
    @required int unitPrice,
    List<Topping> toppings,
  })  : _name = name,
        _description = description,
        _imagePath = imagePath,
        _unitPrice = unitPrice,
        _toppings = toppings;

  final String id;
  String _name;
  String _description;
  String _imagePath;
  int _unitPrice;
  List<Topping> _toppings = [];

  String get name => _name;

  String get description => _description;

  String get imagePath => _imagePath;

  int get unitPrice => _unitPrice;

  List<Topping> get toppings => _toppings;

  set toppings(List<Topping> value) {
    if (value == null) {
      throw Exception();
    }
    _toppings = value;
  }

  set unitPrice(int value) {
    if (value == null) {
      throw Exception();
    }
    _unitPrice = value;
  }

  set description(String value) {
    _description = value;
  }

  set imagePath(String value) {
    if (value == null) {
      throw Exception();
    }
    _imagePath = value;
  }

  set name(String value) {
    if (value == null) {
      throw Exception();
    }
    _name = value;
  }
}
