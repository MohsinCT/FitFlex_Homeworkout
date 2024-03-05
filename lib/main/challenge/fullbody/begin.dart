// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/services/local_db_functions.dart';
import 'package:fitflex_homeworkout/constants/services/local_workout_model.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FullbodyExerciseBegin extends StatefulWidget {
  final String id;
  final String collectionName;

  const FullbodyExerciseBegin({Key? key, required this.id, required this.collectionName}) : super(key: key);

  @override
  State<FullbodyExerciseBegin> createState() => _FullbodyExerciseBeginState();
}

class _FullbodyExerciseBeginState extends State<FullbodyExerciseBegin> {
  late ValueNotifier<int> countdownNotifier;
  late Timer timer;
  bool _paused = false;
  bool _finished = false;

  @override
  void initState() {
    super.initState();
    countdownNotifier = ValueNotifier<int>(30);
    timer = Timer.periodic(const Duration(seconds: 1), _updateTimer);
  }

  @override
  void dispose() {
    timer.cancel();
    countdownNotifier.dispose();
    super.dispose();
  }

  void _updateTimer(Timer timer) {
    if (!_paused && !_finished) {
      countdownNotifier.value -= 1;
      if (countdownNotifier.value <= 0) {
        setState(() {
          _finished = true;
        });
        timer.cancel();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: () async {
          showPauseDialog();
          setState(() {
            _paused = true;
          });
          return false;
        },
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection(widget.collectionName).doc(widget.id).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Image.network(
                          snapshot.data!['image'],
                          fit: BoxFit.contain, // Ensure the image fits within the given dimensions
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        '${snapshot.data!['Exercise']}',
                        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ValueListenableBuilder<int>(
                        valueListenable: countdownNotifier,
                        builder: (context, value, _) {
                          return CircularPercentIndicator(
                            radius: MediaQuery.of(context).size.width * 0.2,
                            percent: value / 30,
                            lineWidth: 20,
                            animationDuration: 300,
                            progressColor: AppColors.deepPurple,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text(
                              '$value',
                              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      if (!_finished)
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _paused = !_paused;
                            });
                          },
                          child: Text(_paused ? 'Continue' : 'Pause'),
                        )
                      else
                        ElevatedButton(
                          onPressed: () async {
                            final data = WorkoutModel(image: snapshot.data!['image'], text: snapshot.data!['Exercise']);
                            await addWorkoutToLocal(data);
                            Navigator.of(context).pop();
                          },
                          child: const Text('Finish'),
                        ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void showPauseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Quit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _paused = false;
                });
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}
