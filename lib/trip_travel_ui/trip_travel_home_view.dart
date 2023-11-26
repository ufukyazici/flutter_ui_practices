import 'package:flutter/material.dart';

class TripTravelHomeView extends StatefulWidget {
  const TripTravelHomeView({super.key});
  @override
  State<TripTravelHomeView> createState() => _TripTravelHomeViewState();
}

class _TripTravelHomeViewState extends State<TripTravelHomeView> {
  final String randomImageUrl = "https://xsgames.co/randomusers/assets/avatars/female/1.jpg";
  final String name = "Douglas Lyphe";
  final String location = "New York, USA";
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
          CircleAvatar(
            backgroundImage: NetworkImage(randomImageUrl),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hi, $name",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(
                  location,
                  style:
                      Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
