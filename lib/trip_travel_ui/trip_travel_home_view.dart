import 'package:flutter/material.dart';

class TripTravelHomeView extends StatefulWidget {
  const TripTravelHomeView({super.key});
  @override
  State<TripTravelHomeView> createState() => _TripTravelHomeViewState();
}

class _TripTravelHomeViewState extends State<TripTravelHomeView> {
  final String randomImageUrl = "https://xsgames.co/randomusers/assets/avatars/female/1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(randomImageUrl),
            ),
          )
        ],
      ),
    );
  }
}
