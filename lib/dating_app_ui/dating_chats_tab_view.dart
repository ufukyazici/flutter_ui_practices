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
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=10", personName: "xd", message: "qweqweqwe", time: "12:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=11", personName: "zd", message: "eqwe", time: "9:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=12", personName: "ad", message: "sadasdasdasd", time: "3:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=13", personName: "qe", message: "sadaasdasdsdasdasd", time: "6:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=14", personName: "we", message: "sadaffffsdasdasd", time: "7:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=15", personName: "rr", message: "sadqqqasdasdasd", time: "9:00"),
    ChatTabModel(
        imageUrl: "https://picsum.photos/250?image=16", personName: "tt", message: "sadarrrsdasdasd", time: "23:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=17", personName: "ff", message: "ttt", time: "22:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=18", personName: "<<xd>>", message: "hhhhh", time: "18:00"),
    ChatTabModel(imageUrl: "https://picsum.photos/250?image=19", personName: "cc", message: "vvvv", time: "14:00"),
  ];
}
