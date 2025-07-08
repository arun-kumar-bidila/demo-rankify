class UserData {
  String? state;

  String? stateExam;
  String? category;

  static final UserData _instance = UserData._internal();

  factory UserData() {
    return _instance;
  }

  UserData._internal();
}
