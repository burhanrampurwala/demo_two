import 'package:demo_two/common/resources/app_strings.dart';
import 'package:demo_two/common/resources/style.dart';
import 'package:demo_two/presentation/to_do_list/page/todo_list_view.dart';
import 'package:flutter/material.dart';

import '../../../common/resources/app_color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Delay before navigating to the main screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const TodoListView()), // Navigate to the main screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your desired background color
      body: Center(
        child: Text(
          AppStrings.splash_title, // Your app name or logo
          style:
              Style.extraLargeTitleStyle(color: AppColor.colorPrimaryInverse),
        ),
      ),
    );
  }
}
