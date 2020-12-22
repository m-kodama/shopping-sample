import 'package:flutter/material.dart';
import 'package:shopping_sample/Repositories/user_repository.dart';
import 'package:shopping_sample/entities/user.dart';

class UserService {
  UserService({
    @required this.userRepository,
  });

  final UserRepository userRepository;

  Future<bool> isDuplicated(User user) async {
    final otherUser = await userRepository.findByUserName(user.userName);
    return otherUser != null;
  }
}
