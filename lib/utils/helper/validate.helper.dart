bool validateLogin({String account = '', String password = ''}) {
  if (account.isEmpty || password.isEmpty) {
    return false;
  }
  return true;
}
