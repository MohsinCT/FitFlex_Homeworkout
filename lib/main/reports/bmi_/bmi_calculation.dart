// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class HeightMeasure extends StatefulWidget {
  final String name;
  final double min;
  final double max;
  final int divisions;
  final ValueChanged<double>? onChanged;
  final double value;
  final String nametwo;

  const HeightMeasure({
    Key? key,
    required this.name,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
    required this.value,
    required this.nametwo,
  }) : super(key: key);

  @override
  _HeightMeasureState createState() => _HeightMeasureState();
}

class _HeightMeasureState extends State<HeightMeasure> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            widget.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Slider(
            min: widget.min,
            max: widget.max,
            divisions: widget.divisions,
            value: widget.value,
            onChanged: widget.onChanged,
          ),
          Text(widget.nametwo),
        ],
      ),
    );
  }
}

class WeightMeasure extends StatefulWidget {
  final String name;
  final double min;
  final double max;
  final double value;
  final int divisions;
  final ValueChanged<double>? onChanged;
  final String nametwo;

  const WeightMeasure({
    Key? key,
    required this.name,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.nametwo,
    required this.divisions,
  }) : super(key: key);

  @override
  _WeightMeasureState createState() => _WeightMeasureState();
}

class _WeightMeasureState extends State<WeightMeasure> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            widget.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Slider(
              min: widget.min,
              max: widget.max,
              divisions: widget.divisions,
              value: widget.value,
              onChanged: widget.onChanged),
          Text(widget.nametwo),
        ],
      ),
    );
  }
}
Widget bmi(double bmi) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "BMI: ${bmi.toStringAsFixed(1)}",
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          (bmi > 25) ? 'Overweight' : (bmi < 18 ? 'Underweight' : 'Healthy'),
        ),
      ],
    ),
  );
}
