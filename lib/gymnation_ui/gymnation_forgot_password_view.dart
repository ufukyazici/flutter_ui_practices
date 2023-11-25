import 'package:flutter/material.dart';

class GymnationForgotPasswordView extends StatefulWidget {
  const GymnationForgotPasswordView({super.key});
  @override
  State<GymnationForgotPasswordView> createState() => _GymnationForgotPasswordViewState();
}

class _GymnationForgotPasswordViewState extends State<GymnationForgotPasswordView> {
  final String forgotPassword = "FORGOT PASSWORD?";
  final String forgotPasswordDescription =
      "Enter your email address below and we'll send you confirmation code to reset your password";
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
          ],
        ),
      ),
    );
  }
}
