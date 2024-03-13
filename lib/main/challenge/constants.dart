// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_five.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_four.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_one.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_seven.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_six.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_three.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/days/day_two.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_five.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_four.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_one.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_seven.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_six.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_three.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/days/day_two.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_five_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_four_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_one_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_seven_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_six_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_three_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/days/day_two_l.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_five_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_four_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_one_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_seven_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_six_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_three_al.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/days/day_two_al.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      // You can customize the app bar further here
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class AMainCatFullBody extends StatefulWidget {
  @override
  State<AMainCatFullBody> createState() => _AMainCatFullBodyState();
}

class _AMainCatFullBodyState extends State<AMainCatFullBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        containerDays('Day 1', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayOneA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 2', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayTwoA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 3', context,(){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayThreeA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 3', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFourA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 5', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFiveA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 6', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySixA()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 7', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySevenA()));
        }),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

Widget containerDays(String text, BuildContext context,dynamic onPressed) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  return Material(
    elevation: 5.0,
    child: Container(
      width: mediaQuery.size.width * 0.9,
      height: mediaQuery.size.height * 0.1,
      color: AppColors.verylightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              text,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
                onPressed:onPressed
                , icon: Icon(Icons.play_arrow_outlined)),
          ),
        ],
      ),
    ),
  );
}

class MainCatFullBody extends StatefulWidget {
  @override
  State<MainCatFullBody> createState() => _MainCatFullBodyState();
}

class _MainCatFullBodyState extends State<MainCatFullBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        containerDays('Day 1', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayOne()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 2', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayTwo()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 3', context,(){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayThree()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 4', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFour()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 5', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFive()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 6', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySix()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 7', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySeven()));
        }),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
class AMainCatLowerBody extends StatefulWidget {
  @override
  State<AMainCatLowerBody> createState() => _AMainCatLowerBodyState();
}

class _AMainCatLowerBodyState extends State<AMainCatLowerBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        containerDays('Day 1', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayOneAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 2', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayTwoAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 3', context,(){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayThreeAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 4', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFourAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 5', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFiveAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 6', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySixAL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 7', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySevenAL()));
        }),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
class MainCatLowerBody extends StatefulWidget {
  @override
  State<MainCatLowerBody> createState() => _MainCatLowerBodyState();
}

class _MainCatLowerBodyState extends State<MainCatLowerBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        containerDays('Day 1', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayOneL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 2', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayTwoL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 3', context,(){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayThreeL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 4', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFourL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 5', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DayFiveL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 6', context,(){
         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySixL()));
        }),
        SizedBox(
          height: 20,
        ),
        containerDays('Day 7', context,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DaySevenL()));
        }),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

