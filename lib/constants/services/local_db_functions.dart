// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'dart:developer';

import 'package:fitflex_homeworkout/constants/services/local_workout_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<WorkoutModel>> recentWorkout = ValueNotifier([]);

Future<void>addWorkoutToLocal(WorkoutModel data)async{
  final box = await Hive.openBox<WorkoutModel>('workout_db');

  int id = await box.add(data);
  WorkoutModel temp = WorkoutModel(image: data.image, text: data.text,id: id);
  await box.put(id, temp);
  await fetchWorkouts();
}

Future<List<WorkoutModel>>getAllLocalWorkouts()async{
  final data = await Hive.openBox<WorkoutModel>('workout_db');
  return data.values.toList();
}

Future<void>fetchWorkouts()async{
  recentWorkout.value.clear();
  final data = await getAllLocalWorkouts();
  Future.forEach(data, (element){
    log(element.text);
    recentWorkout.value.add(element);
  });
  recentWorkout.notifyListeners();
}