import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/medical_app_ui/medical_app_button.dart';

class MedicalAppHomeView extends StatefulWidget {
  const MedicalAppHomeView({super.key});
  @override
  State<MedicalAppHomeView> createState() => _MedicalAppHomeViewState();
}

class _MedicalAppHomeViewState extends State<MedicalAppHomeView> {
  final String _welcomeMessage = "Hello Jack!";
  final String _howAreYouFeelingToday = "How are you feeling today?";
  bool _isTipOfTheDayVisible = true;

  void changeVisibility() {
    setState(() {
      _isTipOfTheDayVisible = !_isTipOfTheDayVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            _welcomeMessage,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            _howAreYouFeelingToday,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.notifications_none_rounded)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: _isTipOfTheDayVisible ? MediaQuery.of(context).size.height * 0.12 : 0,
            child: Card(
              color: const Color(0xfffff9ed),
              child: ListTile(
                title: Text(
                  "Tip of the day",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.bold, color: const Color(0xfffbb13d)),
                ),
                subtitle: Text(
                  "Walk in parks",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, color: const Color(0xfffbb13d)),
                ),
                trailing: Visibility(
                  visible: _isTipOfTheDayVisible,
                  child: InkWell(
                      onTap: () {
                        changeVisibility();
                      },
                      child: const Icon(Icons.close)),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(child: MedicalAppButton(onPressed: () {}, buttonText: "Doctors")),
              Expanded(child: MedicalAppButton(onPressed: () {}, buttonText: "Doctors")),
              Expanded(child: MedicalAppButton(onPressed: () {}, buttonText: "Doctors")),
            ],
          )
        ]),
      ),
    );
  }
}
