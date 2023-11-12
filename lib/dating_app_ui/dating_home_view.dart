import 'package:flutter/material.dart';

class DatingHomeView extends StatefulWidget {
  const DatingHomeView({super.key});
  @override
  State<DatingHomeView> createState() => _DatingHomeViewState();
}

class _DatingHomeViewState extends State<DatingHomeView> {
  final String _title = "Matches";
  final String _titleDescription = 'This is a list of people who have like you and your matches.';
  final String _todayText = 'Today';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  _title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(_titleDescription),
              ),
              Row(
                children: [
                  const Expanded(child: Divider(indent: 5, endIndent: 5)),
                  Text(_todayText),
                  const Expanded(child: Divider(indent: 5, endIndent: 5))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
