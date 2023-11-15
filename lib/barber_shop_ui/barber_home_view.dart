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
  final String _barberShopUrl =
      "https://assets-global.website-files.com/64277851f4875994f6a5388e/642eba075b124573aacd3ff7_How-Much-Does-a-Barber-Make-960x640.jpg";
  final String _barberStatus = "OPEN";
  final String _barberShopName = "Style Barber Shop";
  final String _shopLocation = "New York, USA";
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
            child: Row(
              children: [
                CategoryIconWidget(categoryHaircut: "Shaving", categoryIcon: Icon(Icons.cut)),
                CategoryIconWidget(categoryHaircut: "Haircut", categoryIcon: Icon(Icons.cut)),
                CategoryIconWidget(categoryHaircut: "Coloring", categoryIcon: Icon(Icons.brush_outlined)),
                CategoryIconWidget(categoryHaircut: "Mask", categoryIcon: Icon(Icons.masks)),
                CategoryIconWidget(categoryHaircut: "Care", categoryIcon: Icon(Icons.face_retouching_natural)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                Text(
                  _bestBarbersText,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
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
                            fit: BoxFit.fitWidth,
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
                              color: Colors.green[50],
                              child: Center(
                                child: Text(_barberStatus,
                                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.green)),
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
                      const Positioned.fill(
                          top: 170,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0, top: 2),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 18),
                                Icon(Icons.star, color: Colors.yellow, size: 18),
                                Icon(Icons.star, color: Colors.yellow, size: 18),
                                Icon(Icons.star, color: Colors.yellow, size: 18),
                                Icon(Icons.star, color: Colors.yellow, size: 18),
                              ],
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
            ],
          )
        ]),
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
