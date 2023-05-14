import 'package:agri_clima_app/ui/pages/login/login.presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  final LoginPagePresenter presenter;

  LoginPage({super.key, required this.presenter});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu e-mail',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                final email = emailController.text;
                final password = passwordController.text;

                if (widget.presenter.isEmailValid(email) &&
                    widget.presenter.isPasswordValid(password)) {
                  // fazer login
                }
              },
              child: Text('Entrar'),
            ),
            SizedBox(height: 16),
            Obx(() {
              final error = widget.presenter.error.value;
              return error != null ? Text(error) : SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
