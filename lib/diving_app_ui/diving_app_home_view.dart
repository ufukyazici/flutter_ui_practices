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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.48,
              width: MediaQuery.of(context).size.width * 0.55,
              child: Card(
                child: Column(children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                      child: Image.network(_profileImageUrl)),
                  ListTile(
                    title: Text(
                      "Philippines",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "58 exclusive dive sites",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
                    ),
                    trailing: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      const SizedBox(
                        height: 35,
                        width: 400,
                      ),
                      Positioned(
                          child: CircleAvatar(
                        backgroundImage: NetworkImage(_profileImageUrl),
                      )),
                      Positioned(
                          left: 20,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_profileImageUrl),
                          )),
                      Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_profileImageUrl),
                          )),
                      Positioned(
                          left: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_profileImageUrl),
                          )),
                      Positioned(
                          left: 80,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_profileImageUrl),
                          )),
                      Positioned(
                          left: 125,
                          top: 11,
                          child: Text(
                            "+357 people",
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey),
                          ))
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
