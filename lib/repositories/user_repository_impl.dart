import 'package:shopping_sample/Repositories/user_repository.dart';
import 'package:shopping_sample/entities/user.dart';
import 'package:shopping_sample/models/user/user_id.dart';
import 'package:shopping_sample/models/user/user_name.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<User> findById(UserId id) async {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<User> findByUserName(UserName userName) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<void> save(User user) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<void> delete(User user) {
    // TODO: implement findAll
    throw UnimplementedError();
  }
}
