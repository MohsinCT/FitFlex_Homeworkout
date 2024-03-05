
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminAbsIntermediate extends StatefulWidget {
  const AdminAbsIntermediate({super.key});

  @override
  State<AdminAbsIntermediate> createState() => _AdminAbsIntermediateState();
}

class _AdminAbsIntermediateState extends State<AdminAbsIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'ABS INTERMEDIATE',
            assetImage: Images.absIntermediate,
             collection: 'Abs_Intermediate',));
  }
}
