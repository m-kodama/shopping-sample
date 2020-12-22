import 'package:shopping_sample/Repositories/user_repository.dart';
import 'package:shopping_sample/entities/user.dart';
import 'package:shopping_sample/models/user/user_id.dart';
import 'package:shopping_sample/models/user/user_name.dart';

class UserRepositoryDummy implements UserRepository {
  final List<User> _data = [];

  @override
  Future<List<User>> findAll() async {
    return _data;
  }

  @override
  Future<User> findById(UserId id) async {
    return _data.firstWhere((user) => user.id.equals(id));
  }

  @override
  Future<User> findByUserName(UserName userName) async {
    return _data.firstWhere((user) => user.userName.equals(userName));
  }

  @override
  Future<void> save(User user) async {
    _data.add(user);
  }

  @override
  Future<void> delete(User user) async {
    _data.remove(user);
  }
}
