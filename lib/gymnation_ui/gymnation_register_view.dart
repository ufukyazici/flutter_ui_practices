import 'package:flutter/material.dart';

class GymnationRegisterView extends StatefulWidget {
  const GymnationRegisterView({super.key});
  @override
  State<GymnationRegisterView> createState() => _GymnationRegisterViewState();
}

class _GymnationRegisterViewState extends State<GymnationRegisterView> {
  final String _title = "GYMNATION";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
    );
  }
}
