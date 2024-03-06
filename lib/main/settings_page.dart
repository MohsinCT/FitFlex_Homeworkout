import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/privacy_policy.dart';
import 'package:fitflex_homeworkout/constants/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  // List of IconData representing different icons
  List<IconData> icons = [
    Icons.share,
    Icons.star_rate,
    Icons.feedback,
    Icons.exit_to_app,
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Settings'),
      ),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.black, AppColors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            IconButton(
              onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const TermsConditions()));
              }, icon: const Icon(Icons.note)),
              IconButton(
              onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const PrivacyPolicy()));
              }, icon:const Icon(Icons.pages) ),

      
              
          ],
        )
      ),
    );
  }
}
