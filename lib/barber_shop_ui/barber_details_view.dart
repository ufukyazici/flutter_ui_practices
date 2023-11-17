import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/barber_shop_ui/barber_home_view.dart';

class BarberDetailsView extends StatefulWidget {
  final BarberShopModel model;
  const BarberDetailsView({super.key, required this.model});
  @override
  State<BarberDetailsView> createState() => _BarberDetailsViewState();
}

class _BarberDetailsViewState extends State<BarberDetailsView> {
  final String _detailsTitle = "Barber Details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(_detailsTitle),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(Icons.bookmark_outline)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.model.barberShopUrl,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              )),
          ListTile(
              title: Text(widget.model.barberShopName,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
              subtitle: Text(widget.model.barberShopLocation),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.star, color: Colors.yellow),
                  Text(widget.model.barberShopRating.toString())
                ],
              )),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("About")),
              TextButton(onPressed: () {}, child: const Text("Reviews")),
            ],
          ),
          Text(widget.model.aboutText),
          const Spacer(),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue[900])),
                child: Text(
                  'BOOK NOW',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
                ),
              )),
            ],
          )
        ]),
      ),
    );
  }
}
