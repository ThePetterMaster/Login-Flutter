import 'package:app/controllers/login_controller.dart';
import 'package:app/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

import '../components/login/custom_login_button_component.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.2,
            ),
            CustomTextFieldWidget(
                onChanged: _controller.setLogin, label: 'Login'),
            CustomTextFieldWidget(
              onChanged: _controller.setPass,
              label: 'Senha',
              obscureText: true,
            ),
            SizedBox(height: 15),
            CustomLoginButtomComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
