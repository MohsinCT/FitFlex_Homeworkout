import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/constants.dart';
import 'package:flutter/material.dart';

class LowerBody extends StatefulWidget {
  const LowerBody({super.key});

  @override
  State<LowerBody> createState() => _LowerBodyState();
}

class _LowerBodyState extends State<LowerBody> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return  Scaffold(
      appBar: const MyAppBar(title: 'LOWERBODY'),
      body: ListView(
        children: [
          Column(
            children: [
              Material(
                elevation: 8.0,
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  width: mediaQuery.size.width * 0.9,
                  height: mediaQuery.size.height * 0.23,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            AppColors.black.withOpacity(0.6),
                            BlendMode.srcOver),
                        child: Image.asset(
                         Images.lowerbody,
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
                              padding: EdgeInsets.only(top: 130),
                              child: Text(
                                'In just 4 Weeks, power up your leg,boost lower body strength and enhance your overall strength',
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
              MainCatLowerBody()
            ],
          )
        ],
      ),
    );
  }
}