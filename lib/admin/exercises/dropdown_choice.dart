import 'package:fitflex_homeworkout/constants/services/firebase.dart';

Future<void> selectedExercise(
    String firstDrop, String secondDrop, String exercise, String image,String detail) async {
  if (firstDrop == 'BEGINNER') {
    switch (secondDrop) {
      case 'Abs':
        await addAbsBeginner(exercise, image, detail);
        break;
      case 'Chest':
        await addChestBeginner(exercise, image, detail);
        break;
      case 'Arm':
        await addArmBeginner(exercise, image, detail);
        break;
      case 'Leg':
        await addLegBeginner(exercise, image, detail);
        break;
      case 'Shoulder & Back':
        await addShoulderBeginner(exercise, image, detail);
        break;
      default:
        break;
    }
  } else if (firstDrop == 'INTERMEDIATE') {
    switch (secondDrop) {
      case 'Abs':
        await addAbsIntermediate(exercise, image, detail);
        break;
      case 'Chest':
        await addChestIntermediate(exercise, image,detail);
        break;
      case 'Arm':
        await addArmIntermediate(exercise, image,detail);
        break;
      case 'Leg':
        await addLegIntermediate(exercise, image, detail );
        break;
      case 'Shoulder & Back':
        await addShoulderIntermediate(exercise, image, detail);
        break;
      default:
        break;
    }
  } else if (firstDrop == 'ADVANCED') {
    switch (secondDrop) {
      case 'Abs':
        await addAbsAdvanced(exercise, image, detail );
        break;
      case 'Chest':
        await addChestAdvanced(exercise, image, detail);
        break;
      case 'Arm':
        await addArmAdvanced(exercise, image,detail);
        break;
      case 'Leg':
        await addLegAdvanced(exercise, image,detail);
        break;
      case 'Shoulder & Back':
        await addShoulderAdvanced(exercise, image,detail);
        break;
      default:
        break;
    }
  } else if (firstDrop == 'FULLBODY') {
    switch (secondDrop) {
      case 'Day1':
        await addFullbodyDayOne(exercise, image,detail);
        break;
      case 'Day2':
        await addFullBodyDayTwo(exercise, image,detail);
        break;
      case 'Day3':
        await addFullBodyDayThree(exercise, image,detail);
        break;
      case 'Day4':
        await addFullBodyDayFour(exercise, image,detail);
        break;
      case 'Day5':
        await addFullBodyDayFive(exercise, image,detail);
        break;
      case 'Day6':
        await addFullBodyDaySix(exercise, image,detail);
        break;
      case 'Day7':
        await addFullBodyDaySeven(exercise, image,detail);
        break;
      default:
        break;
    }
  } else if (firstDrop == 'LOWERBODY') {
    switch (secondDrop) {
      case 'Day1':
        await addLowerBodyDayOne(exercise, image,detail);
        break;
      case 'Day2':
        await addLowerBodyDayTwo(exercise, image,detail);
        break;
      case 'Day3':
        await addLowerBodyDayThree(exercise, image,detail);
        break;
      case 'Day4':
        await addLowerBodyDayFour(exercise, image,detail);
        break;
      case 'Day5':
        await addLowerBodyDayFive(exercise, image,detail);
        break;
      case 'Day6':
        await addLowerBodyDaySix(exercise, image,detail);
        break;
      case 'Day7':
        await addLowerBodyDaySeven(exercise, image,detail);
        break;
      default:
        break;
    }
  }
}
