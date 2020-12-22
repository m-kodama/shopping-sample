class UserName {
  UserName(this.value) {
    if (value == null) {
      throw Exception();
    }
    if (value.isEmpty) {
      throw Exception();
    }
    if (value.length > 50) {
      throw Exception();
    }
  }

  final String value;

  bool equals(UserName other) {
    if (other == null) {
      return false;
    }
    return other.value == value;
  }
}
