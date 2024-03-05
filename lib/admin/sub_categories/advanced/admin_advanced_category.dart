// ignore_for_file: use_key_in_widget_constructors

import 'package:fitflex_homeworkout/admin/sub_categories/advanced/workouts/admin_abs_advanced.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/advanced/workouts/admin_arm_advanced.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/advanced/workouts/admin_chest_advanced.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/advanced/workouts/admin_leg_advanced.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/advanced/workouts/admin_shoulder_advanced.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/energy_levels.dart';
import 'package:flutter/material.dart';

class AdminAdvancedCategory extends StatefulWidget {
  @override
  State<AdminAdvancedCategory> createState() => _AdminAdvancedCategoryState();
}

class _AdminAdvancedCategoryState extends State<AdminAdvancedCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminAbsAdvanced())),
          child: buildCustomContainer(
              'ABS ADVANCED', Images.absAdvanced),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminChestAdvanced())),
          child: buildCustomContainer(
              'CHEST ADVANCED', Images.chestAdvanced ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminArmAdvanced())),
          child: buildCustomContainer(
              'ARM ADVANCED', Images.armAdvanced, ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminLegAdvanced())),
          child: buildCustomContainer(
              'LEG ADVANCED', Images.legAdvanced ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminShoulderAdvanced())),
          child: buildCustomContainer(
              'SHOULDER & BACK\nADVANCED', Images.shoulderAdvanced ),
        ),
        // Add more calls as needed
      ],
    );
  }
}


Widget buildCustomContainer(String text, String assetImage,) {
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
              energyLevelAdvanced()
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

// Widget that calls the function multiple times



