import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/medical_app_ui/medical_app_button.dart';
import 'package:flutter_ui_practices/medical_app_ui/medical_navbar_view.dart';
import 'package:flutter_ui_practices/product/extension/png_image_extension.dart';
import 'package:kartal/kartal.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});
  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  final String _getStartedText = "Find the best doctor and midicine for you.";
  final String _buttonText = "Get Started";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(PngImages.medicals.getPngPath),
            Text(
              _getStartedText,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: const Color(0xff14334f), fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: MedicalAppButton(
                buttonText: _buttonText,
                onPressed: () {
                  context.route.navigateToPage(const MedicalNavbarView());
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
