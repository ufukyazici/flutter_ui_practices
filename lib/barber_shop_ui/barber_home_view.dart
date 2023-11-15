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
          Text("Hi, ${_customerModel.customerName} ${_customerModel.customerSurname}!",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
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
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
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
