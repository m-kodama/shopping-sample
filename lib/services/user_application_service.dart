import 'package:flutter/material.dart';
import 'package:shopping_sample/Repositories/user_repository.dart';
import 'package:shopping_sample/entities/user.dart';
import 'package:shopping_sample/models/user/full_name.dart';
import 'package:shopping_sample/models/user/user_id.dart';
import 'package:shopping_sample/models/user/user_model.dart';
import 'package:shopping_sample/models/user/user_name.dart';
import 'package:shopping_sample/models/user/user_summary_model.dart';
import 'package:shopping_sample/services/user_service.dart';

class UserApplicationService {
  UserApplicationService({
    @required UserRepository userRepository,
  })  : _userRepository = userRepository,
        _userService = UserService(userRepository: userRepository);

  final UserRepository _userRepository;
  final UserService _userService;

  Future<UserModel> getUser(String id) async {
    final user = await _userRepository.findById(UserId(id));

    return user == null ? null : UserModel(user);
  }

  Future<List<UserSummaryModel>> getUserList() async {
    final users = await _userRepository.findAll();
    return users.map((User user) => UserSummaryModel(user)).toList();
  }

  Future<void> registerUser({
    @required String userName,
    @required String firstName,
    @required String familyName,
  }) async {
    final user = User(
      userName: UserName(userName),
      name: FullName(firstName: firstName, familyName: familyName),
    );

    if (await _userService.isDuplicated(user)) {
      throw Exception();
    }

    await _userRepository.save(user);
  }

  Future<void> updateUser({
    @required String id,
    String userName,
    String firstName,
    String familyName,
  }) async {
    final user = await _userRepository.findById(UserId(id));
    if (user == null) {
      throw Exception('ユーザーが存在しません');
    }

    user
      ..userName = UserName(userName)
      ..name = FullName(firstName: firstName, familyName: familyName);

    await _userRepository.save(user);
  }

  Future<void> deleteUser({
    @required String id,
  }) async {
    final user = await _userRepository.findById(UserId(id));
    if (user == null) {
      throw Exception('ユーザーが存在しません');
    }

    await _userRepository.delete(user);
  }
}
