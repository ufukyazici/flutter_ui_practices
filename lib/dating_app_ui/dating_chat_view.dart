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
  final _messages = ChatMessageDummy().messages;
  final String placeHolder = 'placeholder';
  final String placeHolder2 = 'placeholder';
  final String placeHolder3 = 'placeholder';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[100],
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (_messages[index].sender == 'you') {
            return YourMessagesWidget(message: _messages[index].message, messageTime: _messages[index].time);
          } else if (_messages[index].sender == 'partner') {
            return PartnerMessageWidget(
                imageUrl: widget.imageUrl, message: _messages[index].message, messageTime: _messages[index].time);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class YourMessagesWidget extends StatelessWidget {
  const YourMessagesWidget({
    super.key,
    required this.message,
    required this.messageTime,
  });

  final String message;
  final String messageTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListTile(
        title: SizedBox(
            child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(message, style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                ))),
        subtitle: Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(messageTime, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class PartnerMessageWidget extends StatelessWidget {
  const PartnerMessageWidget({
    super.key,
    required this.imageUrl,
    required this.message,
    required this.messageTime,
  });

  final String imageUrl;
  final String message;
  final String messageTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
        title: SizedBox(
            child: Card(
                color: const Color(0xffff7373),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(message, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white)),
                ))),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(messageTime, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey)),
        ),
      ),
    );
  }
}

class ChatMessageModel {
  final String sender;
  final String message;
  final String time;

  ChatMessageModel({required this.sender, required this.message, required this.time});
}

class ChatMessageDummy {
  final List<ChatMessageModel> messages = [
    ChatMessageModel(sender: "partner", message: "Sounds good,i'll pick you up at 2 on saturday", time: "12:00AM"),
    ChatMessageModel(sender: "you", message: "Hello", time: "12:00AM"),
    ChatMessageModel(sender: "you", message: "I'm good, how about you?", time: "12:00AM"),
    ChatMessageModel(sender: "partner", message: "Nice to meet you!", time: "12:00AM"),
    ChatMessageModel(sender: "you", message: "Sounds good,i'll pick you up at 2 on saturday", time: "12:00AM"),
    ChatMessageModel(sender: "partner", message: "Hey,how are you?", time: "12:00AM"),
    ChatMessageModel(sender: "partner", message: "Hey,how are you?", time: "12:00AM"),
    ChatMessageModel(sender: "you", message: "Hey,how are you?", time: "12:00AM"),
    ChatMessageModel(sender: "you", message: "Hey,how are you?", time: "12:00AM"),
    ChatMessageModel(sender: "partner", message: "Hey,how are you?", time: "12:00AM"),
  ];
}
