import 'package:flutter/material.dart';

class DivingAppHomeView extends StatefulWidget {
  const DivingAppHomeView({super.key});
  @override
  State<DivingAppHomeView> createState() => _DivingAppHomeViewState();
}

class _DivingAppHomeViewState extends State<DivingAppHomeView> {
  final String _homeTitle = "Home";
  final String _popularCountry = "Popular Country";
  final String _bestDiveSites = "Best Dive sites";
  final String _profileImageUrl = "https://picsum.photos/250?image=10";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(_homeTitle),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: CircleAvatar(backgroundImage: NetworkImage(_profileImageUrl)))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: const OutlineInputBorder(),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                        height: 10,
                        width: 10,
                        child: const Icon(Icons.search, color: Colors.white)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Text(_popularCountry,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
