import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/constants.dart';
import 'package:flutter/material.dart';

class Fullbody extends StatefulWidget {
  const Fullbody({super.key});

  @override
  State<Fullbody> createState() => _FullbodyState();
}

class _FullbodyState extends State<Fullbody> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: const MyAppBar(title: 'FULLBODY'),
      body: ListView(
        children: [
          Column(
            children: [
              Material(
                elevation: 8.0,
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  width: mediaQuery.size.width * 0.9,
                  height: mediaQuery.size.height * 0.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            AppColors.black.withOpacity(0.6),
                            BlendMode.srcOver),
                        child: Image.asset(
                          Images.fullbody,
                          fit: BoxFit.cover,
                          width: mediaQuery.size.width,
                        ),
                      ),
                      SizedBox(
                        width: mediaQuery.size.width,
                        height: mediaQuery.size.height,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 140),
                              child: Text(
                                'Start your body-toning journey to target all muscle groups and build your dream body in 4 weeks!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              MainCatFullBody()
            ],
          )
        ],
      ),
    );
  }
}
