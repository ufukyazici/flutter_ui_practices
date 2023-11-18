import 'package:flutter/material.dart';

class GymnationRegisterView extends StatefulWidget {
  final String pageTitle;
  final String pageDescription;
  final String pageImageUrl;
  const GymnationRegisterView(
      {super.key, required this.pageTitle, required this.pageDescription, required this.pageImageUrl});
  @override
  State<GymnationRegisterView> createState() => _GymnationRegisterViewState();
}

class _GymnationRegisterViewState extends State<GymnationRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              widget.pageImageUrl,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.fitHeight,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(widget.pageTitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
        ),
        Text(
          widget.pageDescription,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
