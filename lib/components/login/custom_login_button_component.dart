import 'package:app/controllers/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomLoginButtomComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtomComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                    print('entrou');
                  } else {
                    print('nao entrou');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Falha ao realizar login'),
                        duration: const Duration(seconds: 5),
                      ),
                    );
                  }
                });
              },
              child: Text('Login')),
    );
  }
}
