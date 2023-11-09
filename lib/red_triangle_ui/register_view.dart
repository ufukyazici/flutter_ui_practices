import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/product/extension/png_image_extension.dart';
import 'package:flutter_ui_practices/red_triangle_ui/button_sign_in.dart';
import 'package:flutter_ui_practices/red_triangle_ui/login_view.dart';
import 'package:kartal/kartal.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final String _username = 'username';
  final String _email = 'email';
  final String _password = 'password';
  final String _confirmPassword = 'confirm password';
  final String _signInText = "Already have an account?";
  final String _signIn = "Sign In";
  final String _signUp = 'SIGN UP';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e8ec),
      body: Center(
          child: Padding(
        padding: const PagePaddings.formField(),
        child: Column(
          children: [
            AnimatedContainer(
                height: context.general.isKeyBoardOpen ? 0 : 150,
                duration: const Duration(milliseconds: 200),
                child: SizedBox(height: 150, child: Image.asset(PngImages.redTriangleLogo.getPngPath))),
            Text(_signUp, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600)),
            Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white, filled: true, hintText: _username, border: const OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white, filled: true, hintText: _email, border: const OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white, filled: true, hintText: _password, border: const OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: _confirmPassword,
                        border: const OutlineInputBorder()),
                  ),
                ),
              ],
            )),
            Padding(padding: const EdgeInsets.only(top: 20), child: ButtonSignIn(signIn: _signUp)),
            Visibility(
              visible: !context.general.isKeyBoardOpen,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('$_signInText  '),
                    InkWell(
                        onTap: () {
                          context.route.navigateToPage(const LoginView());
                        },
                        child: Text(_signIn, style: Theme.of(context).textTheme.labelLarge))
                  ]),
                )
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
