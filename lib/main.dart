
import 'package:firebase_core/firebase_core.dart';
import 'package:fitflex_homeworkout/constants/services/local_db_functions.dart';
import 'package:fitflex_homeworkout/constants/services/local_workout_model.dart';
import 'package:fitflex_homeworkout/firebase_options.dart';
import 'package:fitflex_homeworkout/main/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(WorkoutModelAdapter().typeId)){
    Hive.registerAdapter(WorkoutModelAdapter());
  }
  await fetchWorkouts();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}