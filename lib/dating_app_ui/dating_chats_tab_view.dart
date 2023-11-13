import 'package:flutter/material.dart';

class DatingChatsTabView extends StatefulWidget {
  const DatingChatsTabView({super.key});
  @override
  State<DatingChatsTabView> createState() => _DatingChatsTabViewState();
}

class _DatingChatsTabViewState extends State<DatingChatsTabView> {
  final String _title = "Chats";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
              ),
              title: Text('Person Name'),
              subtitle: Text('This is a subtitle'),
              trailing: Text('12:00'),
            ),
          )
        ],
      ),
    );
  }
}
