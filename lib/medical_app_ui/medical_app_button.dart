import 'package:flutter/material.dart';

class MedicalAppButton extends StatelessWidget {
  const MedicalAppButton({
    super.key,
    String? buttonText,
    Icon? buttonIcon,
    Color? buttonColor,
    Color? textColor,
    required void Function() onPressed,
  })  : _buttonText = buttonText,
        _onPressed = onPressed,
        _buttonIcon = buttonIcon,
        _buttonColor = buttonColor,
        _textColor = textColor;

  final String? _buttonText;
  final void Function() _onPressed;
  final Icon? _buttonIcon;
  final Color? _buttonColor;
  final Color? _textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(_buttonColor ?? const Color(0xff14334f)),
          shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: _buttonText != null
            ? Text(
                _buttonText!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: _textColor ?? Colors.white),
              )
            : _buttonIcon,
      ),
    );
  }
}
