import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

Widget textFormField(TextEditingController controller, String hint) {
  return TextFormField(
    controller: controller,
    style: const TextStyle(color: AppColors.white),
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: AppColors.grey),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white)),
      border: const OutlineInputBorder(),
    ),
  );
}

Widget elevatedButton(dynamic onPressed, String text) {
  return ElevatedButton(
    style: const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.white),
    ),
    onPressed: onPressed,
    child: Text(text),
  );
}
