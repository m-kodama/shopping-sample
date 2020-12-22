import 'package:shopping_sample/models/user/full_name.dart';

class FullNameModel {
  FullNameModel(FullName source)
      : firstName = source.firstName,
        familyName = source.familyName;

  final String firstName;
  final String familyName;
}
