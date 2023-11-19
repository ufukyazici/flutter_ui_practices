import 'package:flutter/material.dart';

class MedicalAppButton extends StatelessWidget {
  const MedicalAppButton({
    super.key,
    required String buttonText,
    required void Function() onPressed,
  })  : _buttonText = buttonText,
        _onPressed = onPressed;

  final String _buttonText;
  final void Function() _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xff14334f)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          _buttonText,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
