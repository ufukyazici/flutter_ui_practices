import 'package:flutter/material.dart';

class BarberShopHomeView extends StatefulWidget {
  const BarberShopHomeView({super.key});
  @override
  State<BarberShopHomeView> createState() => _BarberShopHomeViewState();
}

class _BarberShopHomeViewState extends State<BarberShopHomeView> {
  final String _homeTitle = "Home";
  final BarberCustomerModel _customerModel = BarberCustomerModel(
      imageUrl: "https://picsum.photos/250?image=10", customerName: "Jake", customerSurname: "Weary");
  final String _bestBarbersText = "Best Barbers";
  final List<BarberShopModel> _barberShopList = BarberShopsDummy().barberShopList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(_homeTitle),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundImage: NetworkImage(_customerModel.imageUrl),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Row(
            children: [
              Text("Hi, ${_customerModel.customerName} ${_customerModel.customerSurname}!",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search', prefixIcon: Icon(Icons.search_outlined), border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: CategoriesWidget(),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(children: [
                Text(_bestBarbersText,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              ])),
          // BarberCardWidget(
          //     barberShopUrl: _barberShopList[0].barberShopUrl,
          //     barberStatus: _barberShopList[0].barberStatus,
          //     barberShopName: _barberShopList[0].barberShopName,
          //     shopLocation: _barberShopList[0].barberShopLocation,
          //     shopRating: _barberShopList[0].barberShopRating,
          //     shopReviews: _barberShopList[0].barberShopReviews)
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _barberShopList.length,
              itemBuilder: (context, index) {
                return BarberCardWidget(
                    barberShopUrl: _barberShopList[index].barberShopUrl,
                    barberStatus: _barberShopList[index].barberStatus,
                    barberShopName: _barberShopList[index].barberShopName,
                    shopLocation: _barberShopList[index].barberShopLocation,
                    shopRating: _barberShopList[index].barberShopRating,
                    shopReviews: _barberShopList[index].barberShopReviews);
              },
            ),
          )
        ]),
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CategoryIconWidget(categoryHaircut: "Shaving", categoryIcon: Icon(Icons.cut)),
        CategoryIconWidget(categoryHaircut: "Haircut", categoryIcon: Icon(Icons.cut)),
        CategoryIconWidget(categoryHaircut: "Coloring", categoryIcon: Icon(Icons.brush_outlined)),
        CategoryIconWidget(categoryHaircut: "Mask", categoryIcon: Icon(Icons.masks)),
        CategoryIconWidget(categoryHaircut: "Care", categoryIcon: Icon(Icons.face_retouching_natural)),
      ],
    );
  }
}

class BarberShopModel {
  final String barberShopUrl;
  final String barberStatus;
  final String barberShopName;
  final String barberShopLocation;
  final double barberShopRating;
  final int barberShopReviews;

  BarberShopModel(
      {required this.barberShopUrl,
      required this.barberStatus,
      required this.barberShopName,
      required this.barberShopLocation,
      required this.barberShopRating,
      required this.barberShopReviews});
}

class BarberShopsDummy {
  final List<BarberShopModel> barberShopList = [
    BarberShopModel(
        barberShopUrl:
            "https://static.wixstatic.com/media/f41e18_9a86e8323c924a84ab3bdecc8ab336b4~mv2.jpeg/v1/fit/w_2500,h_1330,al_c/f41e18_9a86e8323c924a84ab3bdecc8ab336b4~mv2.jpeg",
        barberStatus: "OPEN",
        barberShopName: "Elite Barber",
        barberShopLocation: "Copenhag , Denmark",
        barberShopRating: 3.9,
        barberShopReviews: 820),
    BarberShopModel(
        barberShopUrl:
            "https://www.betterteam.com/images/barber-job-description-5184x3456-20201124.jpeg?crop=40:21,smart&width=1200&dpr=2",
        barberStatus: "CLOSE",
        barberShopName: "Elite Barber",
        barberShopLocation: "Copenhag , Denmark",
        barberShopRating: 3.9,
        barberShopReviews: 820),
    BarberShopModel(
        barberShopUrl:
            "https://www.betterteam.com/images/barber-job-description-5184x3456-20201124.jpeg?crop=40:21,smart&width=1200&dpr=2",
        barberStatus: "CLOSE",
        barberShopName: "Elite Barber",
        barberShopLocation: "Copenhag , Denmark",
        barberShopRating: 3.9,
        barberShopReviews: 820),
    BarberShopModel(
        barberShopUrl:
            "https://www.betterteam.com/images/barber-job-description-5184x3456-20201124.jpeg?crop=40:21,smart&width=1200&dpr=2",
        barberStatus: "CLOSE",
        barberShopName: "Elite Barber",
        barberShopLocation: "Copenhag , Denmark",
        barberShopRating: 3.9,
        barberShopReviews: 820),
  ];
}

class BarberCardWidget extends StatelessWidget {
  const BarberCardWidget({
    super.key,
    required String barberShopUrl,
    required String barberStatus,
    required String barberShopName,
    required String shopLocation,
    required double shopRating,
    required int shopReviews,
  })  : _barberShopUrl = barberShopUrl,
        _barberStatus = barberStatus,
        _barberShopName = barberShopName,
        _shopLocation = shopLocation,
        _shopRating = shopRating,
        _shopReviews = shopReviews;

  final String _barberShopUrl;
  final String _barberStatus;
  final String _barberShopName;
  final String _shopLocation;
  final double _shopRating;
  final int _shopReviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        height: 210,
        width: 200,
        child: Card(
          color: Colors.white,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  _barberShopUrl,
                  fit: BoxFit.cover,
                  height: 120,
                ),
              ),
            ),
            Positioned(
                right: 12,
                top: 12,
                child: SizedBox(
                  width: 60,
                  height: 30,
                  child: Card(
                    color: _barberStatus == "OPEN" ? Colors.green[50] : Colors.red[50],
                    child: Center(
                      child: Text(_barberStatus,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: _barberStatus == "OPEN" ? Colors.green : Colors.red)),
                    ),
                  ),
                )),
            Positioned.fill(
              top: 115,
              child: ListTile(
                title: Text(
                  _barberShopName,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 20,
                      ),
                      Text(
                        _shopLocation,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
                top: 170,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 2),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: _shopRating > 0 ? Colors.yellow : Colors.grey, size: 12),
                      Icon(Icons.star, color: _shopRating > 1 ? Colors.yellow : Colors.grey, size: 12),
                      Icon(Icons.star, color: _shopRating > 2 ? Colors.yellow : Colors.grey, size: 12),
                      Icon(Icons.star, color: _shopRating > 3 ? Colors.yellow : Colors.grey, size: 12),
                      Icon(Icons.star, color: _shopRating > 4 ? Colors.yellow : Colors.grey, size: 12),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          _shopRating.toString(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "(${_shopReviews.toString()} reviews)",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}

class CategoryIconWidget extends StatelessWidget {
  const CategoryIconWidget({
    super.key,
    required String categoryHaircut,
    required Icon categoryIcon,
  })  : _categoryHaircut = categoryHaircut,
        _categoryIcon = categoryIcon;

  final String _categoryHaircut;
  final Icon _categoryIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffeaebef)),
                child: _categoryIcon)),
        Text(_categoryHaircut, style: Theme.of(context).textTheme.labelLarge)
      ],
    );
  }
}

class BarberCustomerModel {
  final String imageUrl;
  final String customerName;
  final String customerSurname;

  BarberCustomerModel({required this.imageUrl, required this.customerName, required this.customerSurname});
}
