// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/user/workout_start/exercise_start.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GetReady extends StatefulWidget {
  final String id;
  final String collectionName;

  const GetReady({super.key, required this.id, required this.collectionName});


  @override
  State<GetReady> createState() => _GetReadyState();
}

class _GetReadyState extends State<GetReady> {
  double _percentage = 0.0;
  int countdown = 10;
  Timer? _timer;
  bool _paused = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }



  void _startTimer() {
    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(duration, (timer) {
      if (!_paused) {
        setState(() {
          countdown--;
          _percentage = (countdown / 10);
        });
        if (countdown <= 0) {
          timer.cancel();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>  ExerciseBegin(id: widget.id,collectionName: widget.collectionName,)));
        }
      }
    });
    if (!_paused) {
      _percentage = 1.0;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    
  }

 @override
Widget build(BuildContext context) {
  return WillPopScope(
    onWillPop: () async {
      _showPauseDialog();
      setState(() {
        _paused = true;
      });
      return false; 
    },
    child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _showPauseDialog();
            setState(() {
              _paused = true;
            });
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'READY TO GO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CircularPercentIndicator(
            radius: 100,
            lineWidth: 20,
            animationDuration: 300,
            percent: _percentage,
            progressColor:AppColors.deepPurple,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              '$countdown',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _showPauseDialog();
              setState(() {
                _paused = true;
              });
            },
            child: const Text('Quit'),
          ),
        ],
      ),
    ),
  );
}
  void _showPauseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
        title: const Text('QUIT?'),
        content:const Text('Do you want to quit or continue?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text("Quit"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _paused = false; // Resume the timer
                });
              },
              child: const Text("Continue"),
            ),
          ],
        );
      },
    );
  }
}
