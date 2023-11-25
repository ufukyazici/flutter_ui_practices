import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/gymnation_ui/gymnation_navbar_view.dart';
import 'package:flutter_ui_practices/gymnation_ui/gymnation_register_view.dart';
import 'package:kartal/kartal.dart';

class GymnationOnboardView extends StatefulWidget {
  const GymnationOnboardView({super.key});
  @override
  State<GymnationOnboardView> createState() => _GymnationPageViewState();
}

class _GymnationPageViewState extends State<GymnationOnboardView> {
  final String _buttonText = "TRY GYMNATION NOW";
  final String _memberText = "Already a member?";
  final String _signInText = "Sign in";
  final String _firstPageTitle = "PERSONALIZED PLANS";
  final String _secondPageTitle = "GOAL TRACKING";
  final String _thirdPageTitle = "SECURE AND SEAMLESS";
  final String _firstPageDescription =
      "Experience workouts that adapt to you. Kickstart your fitness journey with customized plans crafted for your fitness level,preferences and goals.";
  final String _secondPageDescription =
      "Set,track and crush your fitness goals with ease. Our intuitive tracking system lets you monitor your progress and stay motivated every step of the way.";
  final String _thirdPageDescription =
      "Your privacy and security are our top priorities. Rest easy knowing that your data is protected and your fitness journey is in safe hands.";
  final String _firstPageImageUrl = "https://thefitnessphantom.com/wp-content/uploads/2021/09/Full-Body-Workout.jpg";
  final String _secondPageImageUrl =
      "https://nextlevelfitness.com/wp-content/uploads/2021/08/gym-workout-routine-for-men.jpg";
  final String _thirdPageImageUrl =
      "https://i0.wp.com/post.healthline.com/wp-content/uploads/2023/02/female-dumbbells-1296x728-header-1296x729.jpg?w=1155&h=2268";
  final String _title = "GYMNATION";
  int currentPageIndex = 0;

  void _changeToCurrentPageIndex(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: _pageView(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: _PageIndexDivider(currentPageIndex: currentPageIndex),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: BottomButtonWidget(
                buttonText: _buttonText,
                onPressed: () {
                  context.route.navigateToPage(const GymnationNavbarView());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: _BottomLoginText(memberText: _memberText, signInText: _signInText),
            )
          ],
        ));
  }

  PageView _pageView() {
    return PageView(
      onPageChanged: _changeToCurrentPageIndex,
      scrollDirection: Axis.horizontal,
      children: [
        GymnationRegisterView(
            pageTitle: _firstPageTitle, pageDescription: _firstPageDescription, pageImageUrl: _firstPageImageUrl),
        GymnationRegisterView(
            pageTitle: _secondPageTitle, pageDescription: _secondPageDescription, pageImageUrl: _secondPageImageUrl),
        GymnationRegisterView(
            pageTitle: _thirdPageTitle, pageDescription: _thirdPageDescription, pageImageUrl: _thirdPageImageUrl),
      ],
    );
  }
}

class _BottomLoginText extends StatelessWidget {
  const _BottomLoginText({
    required String memberText,
    required String signInText,
  })  : _memberText = memberText,
        _signInText = signInText;

  final String _memberText;
  final String _signInText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_memberText, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(_signInText, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.yellow)),
        )
      ],
    );
  }
}

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    super.key,
    required String buttonText,
    required void Function() onPressed,
  })  : _buttonText = buttonText,
        _onPressed = onPressed;

  final String _buttonText;
  final void Function() _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: _onPressed,
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(_buttonText, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black)),
            ),
          ),
        )
      ],
    );
  }
}

class _PageIndexDivider extends StatelessWidget {
  const _PageIndexDivider({
    required this.currentPageIndex,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(indent: 10, color: currentPageIndex == 0 ? Colors.yellow : Colors.grey[850], thickness: 5)),
        Expanded(
            child: Divider(indent: 10, color: currentPageIndex == 1 ? Colors.yellow : Colors.grey[850], thickness: 5)),
        Expanded(
            child: Divider(indent: 10, color: currentPageIndex == 2 ? Colors.yellow : Colors.grey[850], thickness: 5)),
      ],
    );
  }
}
