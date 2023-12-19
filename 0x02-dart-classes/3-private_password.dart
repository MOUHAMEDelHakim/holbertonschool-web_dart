class Password {
  late String _password;
  Password({required String password}) {
    this._password = password;
  }

  bool isValid() {
    if (_password.length > 6 &&
        _password.length < 18 &&
        _password.contains(RegExp(r'[a-zA-Z]')) &&
        _password.contains(RegExp(r'\d'))) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: ${_password}";
  }
}
