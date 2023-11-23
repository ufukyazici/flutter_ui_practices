import 'package:flutter/material.dart';

class GymnationExploreView extends StatefulWidget {
  const GymnationExploreView({super.key});
  @override
  State<GymnationExploreView> createState() => _GymnationExploreViewState();
}

class _GymnationExploreViewState extends State<GymnationExploreView> {
  @override
  Widget build(BuildContext context) {
    const String title = "GYMNATION";

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                height: 42,
                width: 42,
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.yellow)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "START TODAY",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Colors.yellow, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Streak",
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.yellow),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Colors.yellow,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2/4",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Colors.yellow, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Workout Goal",
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.yellow),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Colors.yellow,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "120",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Colors.yellow, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Steps Today",
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.yellow),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
