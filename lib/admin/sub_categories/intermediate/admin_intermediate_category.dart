// ignore_for_file: use_key_in_widget_constructors

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/energy_levels.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/workouts/admin_abs_intermediate.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/workouts/admin_arm_intermediate.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/workouts/admin_chest_intermediate.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/workouts/admin_leg_intermediate.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/workouts/admin_shoulder_intermediate.dart';
import 'package:flutter/material.dart';

class AdminIntermediateCategory extends StatefulWidget {
  @override
  State<AdminIntermediateCategory> createState() =>
      _AdminIntermediateCategoryState();
}

class _AdminIntermediateCategoryState extends State<AdminIntermediateCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AdminAbsIntermediate())),
          child:
              buildCustomContainer('ABS INDERMEDIATE', Images.absIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AdminChestIntermediate())),
          child: buildCustomContainer(
              'CHEST INTERMEDIATE', Images.chestIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AdminArmIntermediate())),
          child:
              buildCustomContainer('ARM INTERMEDIATE', Images.armIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AdminLegIntermediate())),
          child:
              buildCustomContainer('LEG INTERMEDIATE', Images.legIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AdminShoulderIntermediate())),
          child: buildCustomContainer(
              'SHOULDER & BACK\nINTERMEDIATE', Images.shoulderIntermediate),
        ),
        // Add more calls as needed
      ],
    );
  }
}

// Function to generate a Container with custom properties
Widget buildCustomContainer(String text, String assetImage) {
  return Container(
    width: 100,
    height: 140,
    margin: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Stack(children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              AppColors.black.withOpacity(0.5), BlendMode.srcOver),
          child: Image.asset(
            assetImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [energyLevelIntermediate()]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 15),
            child: Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ]),
  );
}

// Widget that calls the function multiple times



