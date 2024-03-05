// ignore_for_file: non_constant_identifier_names

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

Widget backArrow(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    icon: const Icon(
      Icons.arrow_back,
      color: AppColors.white,
    ),
  );
}

Widget CatagoryMenu(
    {required String hint,
    required List<String> items,
    required String? value,
    required void Function(String?) onChanged}) {
  return DropdownButtonFormField(
    dropdownColor:  AppColors.lightyellow,
    style: const TextStyle(color: AppColors.white),
    decoration: const InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white))),
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    iconEnabledColor: AppColors.white,
    hint: Text(
      hint,
      style: const TextStyle(color: AppColors.white),
    ),
    value: value,
    onChanged: onChanged,
    items: items.map<DropdownMenuItem<String>>((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(item),
      );
    }).toList(),
  );
}

Widget BodypartMenu(
    {required String hint,
    required List<String> items,
    required String? value,
    required void Function(String?) onChanged}) {
  return DropdownButtonFormField(
    dropdownColor: AppColors.lightyellow,
    style: const TextStyle(color: AppColors.white),
    decoration: const InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color:AppColors.white)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white))),
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    iconEnabledColor: AppColors.white,
    hint: Text(
      hint,
      style: const TextStyle(color: AppColors.white),
    ),
    value: value,
    onChanged: onChanged,
    items: items.map<DropdownMenuItem<String>>((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: const TextStyle(color: AppColors.white),
        ),
      );
    }).toList(),
  );
}

Widget FullbodyMenu(
    {required String hint,
    required List<String> items,
    required String? value,
    required void Function(String?) onChanged}) {
  return DropdownButtonFormField(
    dropdownColor:AppColors.lightyellow,
    style: const TextStyle(color: Colors.white),
    decoration: const InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white))),
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    iconEnabledColor: AppColors.white,
    hint: Text(
      hint,
      style: const TextStyle(color: AppColors.white),
    ),
    value: value,
    onChanged: onChanged,
    items: items.map<DropdownMenuItem<String>>((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: const TextStyle(color: AppColors.white),
        ),
      );
    }).toList(),
  );
}
Widget DaysMenu(
    {required String hint,
    required List<String> items,
    required String? value,
    required void Function(String?) onChanged}) {
  return DropdownButtonFormField(
    dropdownColor: AppColors.lightyellow,
    style: const TextStyle(color: AppColors.white),
    decoration: const InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: AppColors.white))),
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    iconEnabledColor: AppColors.white,
    hint: Text(
      hint,
      style: const TextStyle(color: AppColors.white),
    ),
    value: value,
    onChanged: onChanged,
    items: items.map<DropdownMenuItem<String>>((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: const TextStyle(color: AppColors.white),
        ),
      );
    }).toList(),
  );
}

