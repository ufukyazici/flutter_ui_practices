import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class RecommendedStoresView extends StatefulWidget {
  const RecommendedStoresView({super.key});
  @override
  State<RecommendedStoresView> createState() => _RecommendedStoresViewState();
}

class _RecommendedStoresViewState extends State<RecommendedStoresView> {
  final String _title = 'Recommended Stores';
  final String _followText = "FOLLOW";
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
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return StoreCardWidget(followText: _followText);
              },
            )
          ],
        ),
      ),
    );
  }
}

class StoreCardWidget extends StatelessWidget {
  const StoreCardWidget({
    super.key,
    required String followText,
  }) : _followText = followText;

  final String _followText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 400,
        child: Card(
          child: Column(
            children: [
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network("https://xsgames.co/randomusers/assets/avatars/male/10.jpg", height: 45)),
                title: const Text('Ingredia Nutrisha'),
                subtitle: const Text('@Ingredia'),
                trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xfff8947c)),
                    child: Text(_followText,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white))),
              ),
              const Divider(endIndent: 20, indent: 20),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 350,
                    color: context.general.randomColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 8),
                    child: Row(
                      children: [
                        Container(height: 80, width: 80, color: context.general.randomColor),
                        Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: Container(height: 80, width: 80, color: context.general.randomColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: Container(height: 80, width: 80, color: context.general.randomColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: Container(height: 80, width: 80, color: context.general.randomColor),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
