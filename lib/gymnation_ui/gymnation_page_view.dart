import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/gymnation_ui/gymnation_register_view.dart';

class GymnationPageView extends StatefulWidget {
  const GymnationPageView({super.key});
  @override
  State<GymnationPageView> createState() => _GymnationPageViewState();
}

class _GymnationPageViewState extends State<GymnationPageView> {
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

  @override
  Widget build(BuildContext context) {
    return PageView(
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
