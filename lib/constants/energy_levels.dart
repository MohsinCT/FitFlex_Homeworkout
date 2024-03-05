
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

Widget energyLevelBeginner() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.grey,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.grey,
        size: 20.0,
      ),
    ],
  );
}

Widget energyLevelIntermediate() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.grey,
        size: 20.0,
      ),
    ],
  );
}

Widget energyLevelAdvanced() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: AppColors.green,
        size: 20.0,
      ),
    ],
  );
}


