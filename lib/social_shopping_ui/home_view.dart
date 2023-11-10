import 'package:flutter/material.dart';

class SocialShoppingHomeView extends StatefulWidget {
  const SocialShoppingHomeView({super.key});
  @override
  State<SocialShoppingHomeView> createState() => _SocialShoppingHomeViewState();
}

class _SocialShoppingHomeViewState extends State<SocialShoppingHomeView> {
  final String _homeTitle = 'Home';
  final String _exploreText = 'Explore';
  final String _feedText = 'Feed';
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {}, shape: const CircleBorder(), child: const Icon(Icons.add_outlined, color: Colors.white)),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(_homeTitle),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))],
      ),
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        "https://xsgames.co/randomusers/assets/avatars/male/$index.jpg",
                      ),
                    ),
                  )),
                  const Text("Jack")
                ]);
              }),
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: Text(_exploreText)),
            TextButton(onPressed: () {}, child: Text(_feedText)),
          ],
        ),
        const Spacer(
          flex: 7,
        ),
      ]),
    );
  }
}
