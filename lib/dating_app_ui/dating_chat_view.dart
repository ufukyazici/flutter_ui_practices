import 'package:flutter/material.dart';

class DatingChatView extends StatefulWidget {
  final String imageUrl;
  final String personName;
  const DatingChatView({super.key, required this.imageUrl, required this.personName});
  @override
  State<DatingChatView> createState() => _DatingChatViewState();
}

class _DatingChatViewState extends State<DatingChatView> {
  bool onlineStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(widget.imageUrl)),
          title: Text(widget.personName),
          subtitle: Row(children: [
            Icon(
              Icons.circle,
              color: onlineStatus ? Colors.green : Colors.grey,
              size: 10,
            ),
            const SizedBox(width: 5),
            Text(onlineStatus ? "Online" : "Offline")
          ]),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded))
        ],
      ),
    );
  }
}
