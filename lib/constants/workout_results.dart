// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

Widget results(BuildContext context) {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const [
      SizedBox(
        width: 85,
        height: 70,
        child: Center(
            child: Text(
          '0\nEXERCISES',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
      SizedBox(
        width: 80,
        height: 70,
        child: Center(
            child: Text(
          '0\nKCAL',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
      SizedBox(
        width: 80,
        height: 70,
        child: Center(
            child: Text(
          '0\nTIME',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}
