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
    widget.presenter.navigateToStream.listen((page) {
      if (page?.isNotEmpty == true) {
        Get.offAllNamed(page!,
            arguments: widget.presenter.navigationHomePage());
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF4E8179),
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.agriculture,
              size: 80,
              color: Color(0xFF4E8179),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu e-mail',
                labelStyle: TextStyle(
                  color: Color(0xFF4E8179),
                ),
                hintStyle: TextStyle(
                  color: Color(0xFF4E8179),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF4E8179),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF4E8179),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                labelStyle: TextStyle(
                  color: Color(0xFF4E8179),
                ),
                hintStyle: TextStyle(
                  color: Color(0xFF4E8179),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF4E8179),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF4E8179),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                final email = emailController.text;
                final password = passwordController.text;

                if (widget.presenter.isEmailValid(email) &&
                    widget.presenter.isPasswordValid(password)) {
                  widget.presenter.navigationHomePage();
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF4E8179),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
            Obx(() {
              final error = widget.presenter.error.value;
              return error != null
                  ? Text(
                      error,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                  : SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
