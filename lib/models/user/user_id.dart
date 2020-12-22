class UserId {
  UserId(this.value);

  final String value;

  bool equals(UserId other) {
    if (other == null) {
      return false;
    }
    return other.value == value;
  }
}
