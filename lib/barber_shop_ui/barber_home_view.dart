import 'package:flutter/material.dart';

class BarberShopHomeView extends StatefulWidget {
  const BarberShopHomeView({super.key});
  @override
  State<BarberShopHomeView> createState() => _BarberShopHomeViewState();
}

class _BarberShopHomeViewState extends State<BarberShopHomeView> {
  final String _homeTitle = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(_homeTitle),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/250?image=10"),
              ))
        ],
      ),
    );
  }
}
