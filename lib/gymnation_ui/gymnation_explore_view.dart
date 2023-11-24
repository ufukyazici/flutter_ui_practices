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
    const String recommended = "RECOMMENDED";
    const String seeAllText = "See all";
    final GymnasiumWorkoutModel recommendedWorkoutModel = GymnasiumWorkoutModel(
        title: "TONED-UP TABATA",
        trainer: "Gus Vaz Tostes",
        duration: 27,
        imageUrl:
            "https://media.istockphoto.com/id/615883260/photo/difficult-doesnt-mean-impossible.jpg?s=612x612&w=0&k=20&c=cAEJvjTFRuF9H9gRov1Aj4X4I6xV6DSvMwWsf-2IW-0=",
        workoutLevel: "Intermediate");

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
            const TopStatusBarWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                children: [
                  const Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_outlined),
                            hintText: "Search classes or trainers",
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        height: 42,
                        width: 42,
                        child: IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_outlined))),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(recommended, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                Text(seeAllText,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Colors.yellow, fontWeight: FontWeight.bold))
              ],
            ),
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      recommendedWorkoutModel.imageUrl,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                    child: Row(
                  children: [
                    Text(recommendedWorkoutModel.title,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(recommendedWorkoutModel.trainer,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TopStatusBarWidget extends StatelessWidget {
  const TopStatusBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.yellow)),
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
    );
  }
}

class GymnasiumWorkoutModel {
  final String title;
  final String trainer;
  final int duration;
  final String imageUrl;
  final String workoutLevel;

  GymnasiumWorkoutModel(
      {required this.title,
      required this.trainer,
      required this.duration,
      required this.imageUrl,
      required this.workoutLevel});
}
