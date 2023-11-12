import 'package:flutter/material.dart';

class DatingHomeView extends StatefulWidget {
  const DatingHomeView({super.key});
  @override
  State<DatingHomeView> createState() => _DatingHomeViewState();
}

class _DatingHomeViewState extends State<DatingHomeView> {
  final String _title = "Matches";
  final String _titleDescription = 'This is a list of people who have like you and your matches.';
  final String _todayText = 'Today';
  final List<DatingAppPersonModel> _persons = DummpyDatingApp().persons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  _title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(_titleDescription),
              ),
              Row(
                children: [
                  const Expanded(child: Divider(indent: 5, endIndent: 5)),
                  Text(_todayText),
                  const Expanded(child: Divider(indent: 5, endIndent: 5))
                ],
              ),
              ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return DatingAppPersonCard(
                      imageUrl: _persons[index].imageUrl,
                      personName: _persons[index].personName,
                      personAge: _persons[index].personAge);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DatingAppPersonCard extends StatelessWidget {
  const DatingAppPersonCard({
    super.key,
    required String imageUrl,
    required String personName,
    required String personAge,
  })  : _imageUrl = imageUrl,
        _personName = personName,
        _personAge = personAge;

  final String _imageUrl;
  final String _personName;
  final String _personAge;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 225,
          width: 180,
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                _imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned.fill(
            top: 170,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "$_personName $_personAge",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                              ))),
                      const VerticalDivider(color: Colors.white, thickness: 1),
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ))),
                    ],
                  ),
                )
              ]),
            ))
      ],
    );
  }
}

class DatingAppPersonModel {
  final String imageUrl;
  final String personName;
  final String personAge;

  DatingAppPersonModel({required this.imageUrl, required this.personName, required this.personAge});
}

class DummpyDatingApp {
  List<DatingAppPersonModel> persons = [
    DatingAppPersonModel(imageUrl: "https://picsum.photos/200/300?random=1", personName: "Lilia", personAge: "19"),
    DatingAppPersonModel(imageUrl: "https://picsum.photos/200/300?random=2", personName: "Lilia1", personAge: "22"),
    DatingAppPersonModel(imageUrl: "https://picsum.photos/200/300?random=3", personName: "Lilia2", personAge: "34"),
    DatingAppPersonModel(imageUrl: "https://picsum.photos/200/300?random=4", personName: "Lilia3", personAge: "20"),
    DatingAppPersonModel(imageUrl: "https://picsum.photos/200/300?random=5", personName: "Lilia4", personAge: "40"),
  ];
}
