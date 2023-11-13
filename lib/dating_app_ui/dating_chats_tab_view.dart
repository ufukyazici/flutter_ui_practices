import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/dating_app_ui/dating_chat_view.dart';
import 'package:kartal/kartal.dart';

class DatingChatsTabView extends StatefulWidget {
  const DatingChatsTabView({super.key});
  @override
  State<DatingChatsTabView> createState() => _DatingChatsTabViewState();
}

class _DatingChatsTabViewState extends State<DatingChatsTabView> {
  final String _title = "Chats";
  final _chatsList = ChatTabModelDummy().chatsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _chatsList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.route.navigateToPage(DatingChatView(
                imageUrl: _chatsList[index].imageUrl,
                personName: _chatsList[index].personName,
              ));
            },
            child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(_chatsList[index].imageUrl)),
                  title: Text(_chatsList[index].personName),
                  subtitle: Text(_chatsList[index].message),
                  trailing: Text(_chatsList[index].time),
                )),
          );
        },
      ),
    );
  }
}

class ChatTabModel {
  final String imageUrl;
  final String personName;
  final String message;
  final String time;

  ChatTabModel({required this.imageUrl, required this.personName, required this.message, required this.time});
}

class ChatTabModelDummy {
  List<ChatTabModel> chatsList = [
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=10", personName: "Jack", message: "Hello bro sup?", time: "12:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=11",
        personName: "John",
        message: "What's ur plan for today?",
        time: "9:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=12", personName: "Bryan", message: "stfu bro ahaha", time: "3:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=13",
        personName: "Simple",
        message: "very interesting personalities",
        time: "6:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=14", personName: "XANTARES", message: "damar gg", time: "7:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=15",
        personName: "calyx",
        message: "smoke short please",
        time: "9:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=16", personName: "niko", message: "im the deag god", time: "23:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=17",
        personName: "BLACKEAGLE",
        message: "im xxxxxxxx",
        time: "22:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=18", personName: "imorr", message: "hhhhh", time: "18:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=19", personName: "m0nesy", message: "vvvv", time: "14:00"),
  ];
}
