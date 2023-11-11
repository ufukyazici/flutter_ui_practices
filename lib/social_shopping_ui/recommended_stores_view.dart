import 'package:flutter/material.dart';

class RecommendedStoresView extends StatefulWidget {
  const RecommendedStoresView({super.key});
  @override
  State<RecommendedStoresView> createState() => _RecommendedStoresViewState();
}

class _RecommendedStoresViewState extends State<RecommendedStoresView> {
  final String _title = 'Recommended Stores';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
                height: 300,
                width: 400,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:
                                Image.network("https://xsgames.co/randomusers/assets/avatars/male/10.jpg", height: 45)),
                        title: const Text('Ingredia Nutrisha'),
                        subtitle: const Text('@Ingredia'),
                        trailing: ElevatedButton(onPressed: () {}, child: const Text("FOLLOW")),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
