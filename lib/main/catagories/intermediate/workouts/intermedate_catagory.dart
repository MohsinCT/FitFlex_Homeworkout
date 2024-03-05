// ignore_for_file: use_key_in_widget_constructors


import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/energy_levels.dart';

import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/abs_intermediate.dart';
import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/arm_intermediate.dart';
import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/chest_intermediate.dart';
import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/leg_intermediate.dart';
import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/shoulder_intermediate.dart';
import 'package:flutter/material.dart';

class IntermediateCatagory extends StatefulWidget {
  @override
  State<IntermediateCatagory> createState() => _IntermediateCatagoryState();
}

class _IntermediateCatagoryState extends State<IntermediateCatagory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const AbsIntermediate())),
          child: buildCustomContainer(
              'ABS INTERMEDIATE', Images.absIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const ChestIntermediate())),
          child: buildCustomContainer(
              'CHEST INTERMEDIATE', Images.chestIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const ArmIntermediate())),
          child: buildCustomContainer(
              'ARM INTERMEDIATE', Images.armIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const LegIntermediate())),
          child: buildCustomContainer(
              'LEG INTERMEDIATE', Images.legIntermediate),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const ShoulderIntermediate())),
          child: buildCustomContainer('SHOULDER & BACK\nINTERMEDIATE',
              Images.shoulderIntermediate),
        ),
      ],
    );
  }
}

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
