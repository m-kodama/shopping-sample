import 'package:shopping_sample/entities/user.dart';
import 'package:shopping_sample/models/user/user_id.dart';
import 'package:shopping_sample/models/user/user_name.dart';

abstract class UserRepository {
  Future<List<User>> findAll();

  Future<User> findById(UserId id);

  Future<User> findByUserName(UserName userName);

  Future<void> save(User user);

  Future<void> delete(User user);
}
