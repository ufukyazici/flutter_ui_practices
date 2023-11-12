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
  final List<int> _imageNumbers = [1, 2, 3, 4, 5];
  final List<String> _storeNames = ["Store 1", "Store 2", "Store 3", "Store 4", "Store 5"];
  final List<String> _storeUsernames = ["store1", "store2", "store3", "store4", "store5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return StoreCardWidget(
              followText: _followText,
              imageNumber: _imageNumbers[index],
              storeName: _storeNames[index],
              storeUsername: _storeUsernames[index],
            );
          },
        ),
      ),
    );
  }
}

class StoreCardWidget extends StatelessWidget {
  const StoreCardWidget({
    super.key,
    required String followText,
    required int imageNumber,
    required String storeName,
    required String storeUsername,
  })  : _followText = followText,
        _imageNumber = imageNumber,
        _storeName = storeName,
        _storeUsername = storeUsername;

  final String _followText;
  final int _imageNumber;
  final String _storeName;
  final String _storeUsername;

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
                    child: Image.network("https://xsgames.co/randomusers/assets/avatars/male/$_imageNumber.jpg",
                        height: 45)),
                title: Text(_storeName),
                subtitle: Text('@$_storeUsername'),
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
