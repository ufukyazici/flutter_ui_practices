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
  final List<DivingAppCountryModel> _countries = DummyDivingCountries().countries;
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
              child: ListView.builder(
                itemCount: _countries.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CountryWidget(
                      countryImageUrl: _countries[index].countryImageUrl,
                      countryName: _countries[index].countryName,
                      countryDiveSitesCount: _countries[index].countryDiveSitesCount,
                      countryDiversCount: _countries[index].countryDiversCount);
                },
              ),
            ),
            Row(
              children: [
                Text(_bestDiveSites,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CountryWidget extends StatelessWidget {
  const CountryWidget(
      {super.key,
      required String countryImageUrl,
      required String countryName,
      required int countryDiveSitesCount,
      required int countryDiversCount})
      : _countryImageUrl = countryImageUrl,
        _countryName = countryName,
        _countryDiveSitesCount = countryDiveSitesCount,
        _countryDiversCount = countryDiversCount;

  final String _countryImageUrl;
  final String _countryName;
  final int _countryDiveSitesCount;
  final int _countryDiversCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width * 0.55,
      child: Card(
        child: Column(children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(_countryImageUrl)),
          ListTile(
            title: Text(
              _countryName,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "$_countryDiveSitesCount exclusive dive sites",
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
                backgroundImage: NetworkImage(_countryImageUrl),
              )),
              Positioned(
                  left: 20,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_countryImageUrl),
                  )),
              Positioned(
                  left: 40,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_countryImageUrl),
                  )),
              Positioned(
                  left: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_countryImageUrl),
                  )),
              Positioned(
                  left: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_countryImageUrl),
                  )),
              Positioned(
                  left: 125,
                  top: 11,
                  child: Text(
                    "+$_countryDiversCount people",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}

class DivingAppCountryModel {
  final String countryImageUrl;
  final String countryName;
  final int countryDiveSitesCount;
  final int countryDiversCount;

  DivingAppCountryModel(
      {required this.countryName,
      required this.countryDiveSitesCount,
      required this.countryDiversCount,
      required this.countryImageUrl});
}

class DummyDivingCountries {
  List<DivingAppCountryModel> countries = [
    DivingAppCountryModel(
        countryName: "Philippines",
        countryDiveSitesCount: 58,
        countryDiversCount: 357,
        countryImageUrl: "https://picsum.photos/250?image=10"),
    DivingAppCountryModel(
        countryName: "Indonesia",
        countryDiveSitesCount: 140,
        countryDiversCount: 248,
        countryImageUrl: "https://picsum.photos/250?image=11"),
    DivingAppCountryModel(
        countryName: "Egypt",
        countryDiveSitesCount: 13,
        countryDiversCount: 142,
        countryImageUrl: "https://picsum.photos/250?image=12"),
    DivingAppCountryModel(
        countryName: "Turkiye",
        countryDiveSitesCount: 34,
        countryDiversCount: 669,
        countryImageUrl: "https://picsum.photos/250?image=13"),
    DivingAppCountryModel(
        countryName: "Denmark",
        countryDiveSitesCount: 88,
        countryDiversCount: 743,
        countryImageUrl: "https://picsum.photos/250?image=14")
  ];
}
