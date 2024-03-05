// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitflex_homeworkout/constants/services/image_upload.dart';

// <------------------ADDING------------------->

// <----------------BEGINNER----------------->

Future<void> addAbsBeginner(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Abs_Beginner')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addChestBeginner(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Chest_Beginner')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addArmBeginner(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Arm_Beginner')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addLegBeginner(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Leg_Beginner')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addShoulderBeginner(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Shoulder_Beginner')
      .add({'description': text, 'image': img, 'detail': detail});
}

// <----------INTERMEDIATE------------->

Future<void> addAbsIntermediate(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Abs_Intermediate')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addChestIntermediate(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Chest_Intermediate')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addArmIntermediate(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Arm_Intermediate')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addLegIntermediate(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Leg_Intermediate')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addShoulderIntermediate(
    String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Shoulder_Intermediate')
      .add({'description': text, 'image': img, 'detail': detail});
}

// <------------ADVANCED-------------->

Future<void> addAbsAdvanced(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Abs_Advanced')
      .add({'description': text, 'image': img, 'detail': detail});
}

Future<void> addChestAdvanced(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Chest_Advanced')
      .add({'description': text, 'image': img , 'detail':detail});
}

Future<void> addArmAdvanced(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Arm_Advanced')
      .add({'description': text, 'image': img , 'detail':detail});
}

Future<void> addLegAdvanced(String text, String image, String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Leg_Advanced')
      .add({'description': text, 'image': img, 'detail':detail});
}

Future<void> addShoulderAdvanced(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('Shoulder_Advanced')
      .add({'description': text, 'image': img, 'detail':detail});

// <------------------------MAIN CATEGORY----------------------->
}

Future<void> addFullbodyDayOne(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DayOne')
      .add({'Exercise': text, 'image': img, 'detail':detail});
}

Future<void> addFullBodyDayTwo(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DayTwo')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addFullBodyDayThree(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DayThree')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addFullBodyDayFour(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DayFour')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addFullBodyDayFive(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DayFive')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addFullBodyDaySix(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance.collection('FullBody_DaySix').add({
    'Exercise': text,
    'image': img,
    'detail':detail
  });
}

Future<void> addFullBodyDaySeven(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('FullBody_DaySeven')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDayOne(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DayOne')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDayTwo(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DayTwo')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDayThree(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DayThree')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDayFour(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DayFour')
      .add({'Exercise': text, 'image': img ,'detail':detail});
}

Future<void> addLowerBodyDayFive(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DayFive')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDaySix(String text, String image , String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DaySix')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

Future<void> addLowerBodyDaySeven(String text, String image,String detail) async {
  final img = await FileUploadRepository.uploadImage(File(image));
  await FirebaseFirestore.instance
      .collection('LowerBody_DaySeven')
      .add({'Exercise': text, 'image': img,'detail':detail});
}

// <-----------------DELETE------------------>

//  <----------BEGINNER---------->

Future<void> deleteBegExercise(docId) async {
  List<String> begCollectionNames = [
    'Abs_Beginner',
    'Chest_Beginner',
    'Arm_Beginner',
    'Leg_Beginner',
    'Shoulder_Beginner',
  ];

  for (String begCollectionName in begCollectionNames) {
    await FirebaseFirestore.instance
        .collection(begCollectionName)
        .doc(docId)
        .delete();
  }
}

// <-------------INTERMEDIATE--------------->

Future<void> deleteInterExercise(docId) async {
  List<String> interCollectionNames = [
    'Abs_Intermediate',
    'Chest_Intermediate',
    'Arm_Intermediate',
    'Leg_Intermediate',
    'Shoulder_Intermediate',
  ];

  for (String interCollectionName in interCollectionNames) {
    await FirebaseFirestore.instance
        .collection(interCollectionName)
        .doc(docId)
        .delete();
  }
}

// <-------------ADVANCED--------------->

Future<void> deleteAdvExercise(docId) async {
  List<String> advCollectionNames = [
    'Abs_Advanced',
    'Chest_Advanced',
    'Arm_Advanced',
    'Leg_Advanced',
    'Shoulder_Advanced',
  ];
  for (String advCollectionName in advCollectionNames) {
    await FirebaseFirestore.instance
        .collection(advCollectionName)
        .doc(docId)
        .delete();
  }
}
// <---------------MAIN CATEGORY-------------------->

Future<void> deleteFullBodyExercise(docId) async {
  List<String> fullBodyCollectionNames = [
    'FullBody_DayOne',
    'FullBody_DayTwo',
    'FullBody_DayThree',
    'FullBody_DayFour',
    'FullBody_DayFive',
    'FullBody_DaySix',
    'FullBody_DaySeven',
  ];
  for (String fullBodyCollectionName in fullBodyCollectionNames) {
    await FirebaseFirestore.instance
        .collection(fullBodyCollectionName)
        .doc(docId)
        .delete();
  }
}

Future<void> deleteLowerBodyExercise(docId) async {
  List<String> lowerBodyCollectionNames = [
    'LowerBody_DayOne',
    'LowerBody_DayTwo',
    'LowerBody_DayThree',
    'LowerBody_DayFour',
    'LowerBody_DayFive',
    'LowerBody_DaySix',
    'LowerBody_DaySeven',
  ];
  for (String lowerBodyCollectionName in lowerBodyCollectionNames) {
    await FirebaseFirestore.instance
        .collection(lowerBodyCollectionName)
        .doc(docId)
        .delete();
  }
}

// <------------------EDIT---------------------->

Future<void> editBeginner(String docId, String newText, String newImage) async {
  if (docId.isNotEmpty && newImage.isNotEmpty) {
    final newImgUrl = await FileUploadRepository.uploadImage(File(newImage));
    List<String> beginnerCollectionNames = [
      'Abs_Beginner',
      'Chest_Beginner',
      'Arm_Beginner',
      'Leg_Beginner',
      'Shoulder_Beginner',
    ];
    for (String beginnerCollectionName in beginnerCollectionNames) {
      FirebaseFirestore.instance
          .collection(beginnerCollectionName)
          .doc(docId)
          .update(
        {
          'description': newText,
          'image': newImgUrl,
        },
      ).then((_) {
        log('Document updated!! in $beginnerCollectionName collection');
      }).catchError((error) {
        log('Failed to update document in $beginnerCollectionName collection :$error');
      });
    }
  }
}

Future<void> editIntermediate(
    String docId, String newText, String newImage) async {
  if (docId.isNotEmpty && newImage.isNotEmpty) {
    final newImgUrl = await FileUploadRepository.uploadImage(File(newImage));
    List<String> intermediateCollectionNames = [
      'Abs_Intermediate',
      'Chest_Intermediate',
      'Arm_Intermediate',
      'Leg_Intermediate',
      'Shoulder_Intermediate',
    ];
    for (String intermediateCollectionName in intermediateCollectionNames) {
      FirebaseFirestore.instance
          .collection(intermediateCollectionName)
          .doc(docId)
          .update({
        'description': newText,
        'image': newImgUrl,
      }).then((_) {
        log('Document updated !! in $intermediateCollectionName collection');
      }).catchError((error) {
        log('Failed to update document in $intermediateCollectionName collection:$error');
      });
    }
  }
}

Future<void> editAdvanced(String docId, String newText, String newImage) async {
  if (docId.isNotEmpty && newImage.isNotEmpty) {
    final newImgUrl = await FileUploadRepository.uploadImage(File(newImage));
    List<String> advancedCollectionNames = [
      'Abs_Advanced',
      'Chest_Advanced',
      'Arm_Advanced',
      'Leg_Advanced',
      'Shoulder_Advanced',
    ];
    for (String advancedCollectionName in advancedCollectionNames) {
      FirebaseFirestore.instance
          .collection(advancedCollectionName)
          .doc(docId)
          .update({
        'description': newText,
        'image': newImgUrl,
      }).then((_) {
        log('Document updated!!! in $advancedCollectionName collection');
      }).catchError((error) {
        log('Failed to update document in $advancedCollectionName collection:$error');
      });
    }
  }
}

Future<void> editFullBodyExercise(
    String docId, String newText, String newImage) async {
  if (docId.isNotEmpty && newImage.isNotEmpty) {
    final newImgUrl = await FileUploadRepository.uploadImage(File(newImage));
    List<String> fullBodyCollectionNames = [
      'FullBody_DayOne',
      'FullBody_DayTwo',
      'FullBody_DayThree',
      'FullBody_DayFour',
      'FullBody_DayFive',
      'FullBody_DaySix',
      'FullBody_DaySeven',
    ];
    for (String fullBodyCollectionName in fullBodyCollectionNames) {
      FirebaseFirestore.instance
          .collection(fullBodyCollectionName)
          .doc(docId)
          .update({'Exercise': newText, 'image': newImgUrl}).then((_) {
        log('Document updated!! $fullBodyCollectionName collection');
      }).catchError((error) {
        log('Failed to update document in $fullBodyCollectionName collection :$error');
      });
    }
  }
}

Future<void> editLowerBodyExercise(
    String docId, String newText, String newImage) async {
  if (docId.isNotEmpty && newImage.isNotEmpty) {
    final newImgUrl = await FileUploadRepository.uploadImage(File(newImage));
    List<String> lowerBodyCollectionNames = [
      'LowerBody_DayOne',
      'LowerBody_DayTwo',
      'LowerBody_DayThree',
      'LowerBody_DayFour',
      'LowerBody_DayFive',
      'LowerBody_DaySix',
      'LowerBody_DaySeven',
    ];
    for (String lowerBodyCollectionName in lowerBodyCollectionNames) {
      FirebaseFirestore.instance
          .collection(lowerBodyCollectionName)
          .doc(docId)
          .update({'Exercise': newText, 'image': newImgUrl}).then((_) {
        log('Document updated!! $lowerBodyCollectionName collection');
      }).catchError((error) {
        log('Failed to update document in $lowerBodyCollectionName collection :$error');
      });
    }
  }
}
