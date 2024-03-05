// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:io';
import 'package:fitflex_homeworkout/admin/exercises/contants.dart';
import 'package:fitflex_homeworkout/admin/exercises/dropdown_choice.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/fieldandbuttons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({super.key});

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  String firstDrop = '';
  String secondDrop = '';
  File? _selectedimages;
  String? _selectedValuelevel;
  String? _selectedValueBodyPart;
  String? _selectedValueBody;
  String? _selectedDay;

  final TextEditingController _exerciseController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          leading: backArrow(context),
          backgroundColor: AppColors.transparant,
          centerTitle: true,
          title: const Text(
            'ADD EXERCISE',
            style:
                TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height,
          decoration: const BoxDecoration(color: AppColors.darkBlue),
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'MAIN CATEGORY',
                    style: TextStyle(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                  FullbodyMenu(
                      hint: 'SELECT BODY',
                      items: ['FULLBODY', 'LOWERBODY'],
                      value: _selectedValueBody,
                      onChanged: (bodyValue) {
                        setState(() {
                          log(bodyValue.toString());
                          firstDrop = bodyValue!;
                        });
                      }),
                  DaysMenu(
                      hint: 'SELECT A DAY',
                      items: [
                        'Day1',
                        'Day2',
                        'Day3',
                        'Day4',
                        'Day5',
                        'Day6',
                        'Day7'
                      ],
                      value: _selectedDay,
                      onChanged: (dayValue) {
                        setState(() {
                          log(dayValue.toString());
                          secondDrop = dayValue!;
                        });
                      }),
                  const SizedBox(height: 20),
                  const Text(
                    'SUB CATEGORY',
                    style: TextStyle(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                  CatagoryMenu(
                    hint: 'SELECT LEVEL',
                    items: ['BEGINNER', 'INTERMEDIATE', 'ADVANCED'],
                    value: _selectedValuelevel,
                    onChanged: (selectedValue) {
                      setState(() {
                        log(selectedValue.toString());
                        firstDrop = selectedValue!;
                      });
                    },
                  ),
                  BodypartMenu(
                    hint: 'SELECT BODY-PART',
                    items: ['Abs', 'Chest', 'Arm', 'Leg', 'Shoulder & Back'],
                    value: _selectedValueBodyPart,
                    onChanged: (newValue) {
                      setState(() {
                        log(newValue.toString());
                        secondDrop = newValue!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: textFormField(
                      _exerciseController, 'Enter the name of the Exercise')),
            const  SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: _descriptionController,
                    style: const TextStyle(color: AppColors.white),
                    decoration:const InputDecoration(
                      hintText: 'Enter the details of the Exercise',
                      hintStyle:  TextStyle(color: AppColors.grey),
                      focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white)),
                      border:  OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 12.0),
                    ),
                  )),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: SizedBox(
                  width: 195,
                  height: 200,
                  child: _selectedimages != null
                      ? Image.file(_selectedimages!)
                      : const Center(
                          child: Text(
                          'Select Exercise Gif',
                          style: TextStyle(color: AppColors.white),
                        )),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              elevatedButton(() async {
                _pickImagefromGallery();
              }, 'ADD'),
              elevatedButton(() {
                Navigator.of(context).pop();
                selectedExercise(firstDrop, secondDrop,
                
                    _exerciseController.text, _selectedimages!.path,_descriptionController.text);
                exerciseAdded(context);
              }, 'Save')
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImagefromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedimages = File(returnedImage!.path);
    });
  }

  void exerciseAdded(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Exercise added successfully!'),
      duration: Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
