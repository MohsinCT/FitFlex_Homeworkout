// ignore_for_file: use_key_in_widget_constructors


import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/energy_levels.dart';

import 'package:fitflex_homeworkout/main/catagories/beginner/workouts/abs_beginner.dart';
import 'package:fitflex_homeworkout/main/catagories/beginner/workouts/arm_beginner.dart';
import 'package:fitflex_homeworkout/main/catagories/beginner/workouts/chest_beginner.dart';
import 'package:fitflex_homeworkout/main/catagories/beginner/workouts/leg_beginner.dart';
import 'package:fitflex_homeworkout/main/catagories/beginner/workouts/shoulder_beginner.dart';
import 'package:flutter/material.dart';

class BeginnerCatagory extends StatefulWidget {
  @override
  State<BeginnerCatagory> createState() => _UserBeginnerCatagoryState();
}

class _UserBeginnerCatagoryState extends State<BeginnerCatagory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AbsBeginner())),
          child: buildCustomContainer(
              'ABS BEGINNER', Images.absBeginner),
        ),
        InkWell(
          onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ChestBeginner())),
          child: buildCustomContainer(
              'CHEST BEGINNER', Images.chestBeginner),
        ),
        InkWell(
          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ArmBeginner())),
          child: buildCustomContainer(
              'ARM BEGINNER', Images.armBeginner),
        ),
        InkWell(
          onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const LegBeginner())),
          child: buildCustomContainer(
              'LEG BEGINNER', Images.legBeginner),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ShoulderBeginner() )),
          child: buildCustomContainer(
              'SHOULDER & BACK\nBEGINNER', Images.shoulderBeginner),
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
    child: Stack(
      children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            AppColors.black.withOpacity(0.5),BlendMode.srcOver
            ),
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
            child: Row(children: [
              energyLevelBeginner()
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 15),
            child: Row(  
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20.0, 
                    color: AppColors.white,
                    fontWeight: FontWeight.bold
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]),
  );
}




