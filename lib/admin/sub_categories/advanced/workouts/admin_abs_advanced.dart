
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminAbsAdvanced extends StatefulWidget {
  const AdminAbsAdvanced({super.key});

  @override
  State<AdminAbsAdvanced> createState() => _AbsAdvancedState();
}

class _AbsAdvancedState extends State<AdminAbsAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  AdminSilverAppBarWithChangingTextColor(
        text: 'ABS ADVANCED',
        assetImage: Images.absAdvanced,
        collection: 'Abs_Advanced',
      ),
    );
  }
}
