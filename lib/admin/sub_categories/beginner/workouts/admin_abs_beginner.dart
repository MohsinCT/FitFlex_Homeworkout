
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';

class AdminAbsBeginner extends StatefulWidget {
  const AdminAbsBeginner({Key? key}) : super(key: key);

  @override
  State<AdminAbsBeginner> createState() => _AdminAbsBeginnerState();
}

class _AdminAbsBeginnerState extends State<AdminAbsBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
          text: 'ABS BEGINNER',
          assetImage: Images.absBeginner,
          collection: 'Abs_Beginner',
        ));
  }
}
