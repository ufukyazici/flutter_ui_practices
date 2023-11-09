import 'package:flutter/material.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    super.key,
    required String signIn,
  }) : _signIn = signIn;

  final String _signIn;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Color(0xfff84c64)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
            child: Text(_signIn, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
