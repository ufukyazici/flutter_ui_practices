import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/product/extension/png_image_extension.dart';
import 'package:flutter_ui_practices/red_triangle_ui/button_sign_in.dart';
import 'package:kartal/kartal.dart';

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
            AnimatedContainer(
                height: context.general.isKeyBoardOpen ? 0 : 150,
                duration: const Duration(milliseconds: 200),
                child: SizedBox(height: 150, child: Image.asset(PngImages.redTriangleLogo.getPngPath))),
            Text(
              _signIn,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            _UsernamePasswordForm(username: _username, password: _password),
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
                  child: Text(_forgotPassword, style: Theme.of(context).textTheme.labelLarge),
                ),
              ],
            ),
            ButtonSignIn(signIn: _signIn),
            Visibility(
              visible: !context.general.isKeyBoardOpen,
              child: Column(children: [
                Padding(padding: const EdgeInsets.only(top: 20.0), child: Text(_orSignIn)),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SocialLoginWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('$_signUpText  '),
                      InkWell(child: Text(_signUp, style: Theme.of(context).textTheme.labelLarge))
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      )),
    );
  }
}

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
              height: 40,
              child: Image.asset(
                PngImages.facebook.getPngPath,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: InkWell(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
                height: 40,
                child: Image.asset(
                  PngImages.twitter.getPngPath,
                )),
          ),
        ),
      ),
    ]);
  }
}

class _UsernamePasswordForm extends StatelessWidget {
  const _UsernamePasswordForm({
    required String username,
    required String password,
  })  : _username = username,
        _password = password;

  final String _username;
  final String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
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
    ));
  }
}

class PagePaddings extends EdgeInsets {
  const PagePaddings.all(super.value) : super.all();
  const PagePaddings.formField() : super.only(right: 60, left: 60);
  const PagePaddings.onlyTop() : super.only(top: 20);
}
