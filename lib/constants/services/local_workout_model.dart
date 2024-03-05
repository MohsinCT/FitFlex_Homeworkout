import 'package:hive_flutter/hive_flutter.dart';
part 'local_workout_model.g.dart';

@HiveType(typeId: 0)
class WorkoutModel{

  @HiveField(0)
  final int? id;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String text;

  WorkoutModel({ this.id, required this.image, required this.text});
}