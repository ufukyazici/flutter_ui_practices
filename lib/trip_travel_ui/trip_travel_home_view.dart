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
  final Icon categoryIcon = const Icon(Icons.sunny);
  bool isSelected = true;
  final String categoryTitle = "Trips";
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
                Text(location,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      hintText: "Search...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: const Icon(Icons.filter_alt_rounded)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCardWidget(isSelected: isSelected, categoryTitle: categoryTitle),
                  CategoryCardWidget(isSelected: isSelected, categoryTitle: categoryTitle),
                  CategoryCardWidget(isSelected: isSelected, categoryTitle: categoryTitle),
                  CategoryCardWidget(isSelected: isSelected, categoryTitle: categoryTitle),
                  CategoryCardWidget(isSelected: isSelected, categoryTitle: categoryTitle),
                ],
              ),
            ),
            const Row(
              children: [Text("Hot Places")],
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.isSelected,
    required this.categoryTitle,
  });

  final bool isSelected;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: Card(
        color: isSelected ? const Color(0xff094863) : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prepareIcon(const Icon(Icons.sunny), isSelected),
            Text(
              categoryTitle,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: isSelected ? Colors.white : Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

Widget prepareIcon(Icon categoryIcon, bool isSelected) {
  return Icon(
    categoryIcon.icon,
    size: 45,
    color: isSelected ? Colors.white : Colors.grey,
  );
}
