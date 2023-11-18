import 'package:flutter/material.dart';

class GymnationRegisterView extends StatefulWidget {
  final String pageTitle;
  final String pageDescription;
  final String pageImageUrl;
  final int pageId;
  const GymnationRegisterView(
      {super.key,
      required this.pageTitle,
      required this.pageDescription,
      required this.pageImageUrl,
      required this.pageId});
  @override
  State<GymnationRegisterView> createState() => _GymnationRegisterViewState();
}

class _GymnationRegisterViewState extends State<GymnationRegisterView> {
  final String _buttonText = "TRY GYMNATION NOW";
  final String _memberText = "Already a member?";
  final String _signInText = "Sign in";
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Row(
            children: [
              Expanded(
                  child:
                      Divider(indent: 10, color: widget.pageId == 1 ? Colors.yellow : Colors.grey[850], thickness: 5)),
              Expanded(
                  child:
                      Divider(indent: 10, color: widget.pageId == 2 ? Colors.yellow : Colors.grey[850], thickness: 5)),
              Expanded(
                  child:
                      Divider(indent: 10, color: widget.pageId == 3 ? Colors.yellow : Colors.grey[850], thickness: 5)),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child:
                      Text(_buttonText, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black)),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_memberText, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(_signInText, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.yellow)),
              )
            ],
          ),
        )
      ]),
    );
  }
}
