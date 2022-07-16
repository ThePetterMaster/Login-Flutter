import 'package:flutter/cupertino.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier(false);
  String? _login;
  String? _pass;
  setLogin(String value) => _login = value;
  setPass(String value) => _pass = value;
  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    print('login: $_login,pass: $_pass');
    return _login == 'admin' && _pass == '123';
  }
}
