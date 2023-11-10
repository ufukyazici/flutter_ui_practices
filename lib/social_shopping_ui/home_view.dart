import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SocialShoppingHomeView extends StatefulWidget {
  const SocialShoppingHomeView({super.key});
  @override
  State<SocialShoppingHomeView> createState() => _SocialShoppingHomeViewState();
}

class _SocialShoppingHomeViewState extends State<SocialShoppingHomeView> {
  final String _homeTitle = 'Home';
  final String _exploreText = 'Explore';
  final String _feedText = 'Feed';
  final String _popularProducts = 'Popular Products';
  final List dummyPersonNameList = [
    'Jack',
    'Jason',
    'Will',
    'Fig',
    'Bryan',
    'Fatih',
    'Bob',
    'Chris',
    'Ollie',
    'Nicolette'
  ];
  final String _specialProducts = 'Special Products';
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
          flex: 2,
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
                  Text(dummyPersonNameList[index], style: Theme.of(context).textTheme.labelSmall)
                ]);
              }),
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: Text(_exploreText)),
            TextButton(onPressed: () {}, child: Text(_feedText)),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_popularProducts, style: Theme.of(context).textTheme.titleLarge),
            ),
          ],
        ),
        Expanded(
            flex: 4,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 400,
                    width: 200,
                    color: context.general.randomColor,
                  ),
                );
              },
            )),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_specialProducts, style: Theme.of(context).textTheme.titleLarge)),
          ],
        ),
        Expanded(
          flex: 6,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 80, width: 80, color: context.general.randomColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 80, width: 80, color: context.general.randomColor),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}
