import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/gymnation_ui/gymnation_onboard_view.dart';

class GymnationForgotPasswordView extends StatefulWidget {
  const GymnationForgotPasswordView({super.key});
  @override
  State<GymnationForgotPasswordView> createState() => _GymnationForgotPasswordViewState();
}

class _GymnationForgotPasswordViewState extends State<GymnationForgotPasswordView> {
  final String forgotPassword = "FORGOT PASSWORD?";
  final String forgotPasswordDescription =
      "Enter your email address below and we'll send you confirmation code to reset your password";
  final String signInText = "SIGN IN";
  final String email = "Email";
  final String enterEmail = "Enter your email address";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Text(forgotPassword,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(forgotPasswordDescription,
                  style:
                      Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey)),
            ),
            Row(
              children: [
                Text(email, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: enterEmail,
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
            ),
            const Spacer(),
            BottomButtonWidget(buttonText: signInText, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
