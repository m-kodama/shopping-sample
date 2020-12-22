import 'package:shopping_sample/entities/user.dart';
import 'package:shopping_sample/models/user/full_name_model.dart';

class UserModel {
  UserModel(User source)
      : id = source.id.value,
        userName = source.userName.value,
        name = FullNameModel(source.name);

  final String id;
  final String userName;
  final FullNameModel name;
}
