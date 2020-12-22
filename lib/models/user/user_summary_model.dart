import 'package:shopping_sample/entities/user.dart';

class UserSummaryModel {
  UserSummaryModel(User source)
      : id = source.id.value,
        userName = source.userName.value;

  final String id;
  final String userName;
}
