import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/fullbody.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody/lowerbody.dart';
import 'package:flutter/material.dart';

Widget fullBody(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  return Container(
    width: mediaQuery.size.width * 0.8,
    height: mediaQuery.size.height * 0.27,
    decoration: const BoxDecoration(
      color: AppColors.black,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                AppColors.black.withOpacity(0.7), BlendMode.srcOver),
            child: Image.asset(
              Images.fullbody,
              fit: BoxFit.cover,
              width: mediaQuery.size.width,
            ),
          ),
          SizedBox(
            width: mediaQuery.size.width,
            height: mediaQuery.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(bottom: mediaQuery.size.height * 0.05),
                  child:const Text(
                    'FULL BODY 7x4 \nCHALLENGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              const  Text(
                  'Start your body-toning journey to target all muscle groups and build your dream body in 4 weeks!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.white, fontSize: 11),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => const Fullbody()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.size.width * 0.3),
                    ),
                    child: const Text(
                      'START',
                      style: TextStyle(
                          color: AppColors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
Widget lowerBody(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  return Container(
    width: mediaQuery.size.width * 0.8,
    height: mediaQuery.size.height * 0.27,
    decoration:const BoxDecoration(
      color: AppColors.black,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: ClipRRect(
      borderRadius:const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                AppColors.black.withOpacity(0.6), BlendMode.srcOver),
            child: Image.asset(
              Images.lowerbody,
              fit: BoxFit.cover,
              width: mediaQuery.size.width,
            ),
          ),
          SizedBox(
            width: mediaQuery.size.width,
            height: mediaQuery.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(bottom: mediaQuery.size.height * 0.05),
                  child: const Text(
                    'LOWER BODY 7x4 \nCHALLENGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               const Text(
                  'In just 4 weeks, power up your legs, boost lower body strength, and enhance your overall strength!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const LowerBody()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 0.3,
                      // 1% of screen height as vertical padding
                    ),
                  ),
                  child:const Text(
                    'START',
                    style: TextStyle(color: AppColors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}