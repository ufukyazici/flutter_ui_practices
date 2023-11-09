import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/product/extension/png_image_extension.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String _signIn = "SIGN IN";
  final String _username = 'username';
  final String _password = 'password';
  final String _rememberMe = "Remember me";
  final String _forgotPassword = "Forgot password?";
  final String _orSignIn = "Or Sign In With";
  final String _signUpText = "Don't have an account?";
  final String _signUp = "Sign Up";
  bool value = false;

  void _changeSelected() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e8ec),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
          child: Padding(
        padding: const PagePaddings.formField(),
        child: Column(
          children: [
            SizedBox(height: 150, child: Image.asset(PngImages.redTriangleLogo.getPngPath)),
            Text(
              _signIn,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            Form(
                child: Column(
              children: [
                Padding(
                  padding: const PagePaddings.onlyTop(),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: _username,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const PagePaddings.onlyTop(),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: _password,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            )),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: value,
                  onChanged: (value) {
                    _changeSelected();
                  },
                ),
                Text(_rememberMe),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    _forgotPassword,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class PagePaddings extends EdgeInsets {
  const PagePaddings.all(super.value) : super.all();
  const PagePaddings.formField() : super.only(right: 60, left: 60);
  const PagePaddings.onlyTop() : super.only(top: 20);
}
