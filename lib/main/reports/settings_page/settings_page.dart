import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/privacy_policy.dart';
import 'package:fitflex_homeworkout/constants/terms_and_conditions.dart';
import 'package:fitflex_homeworkout/main/reports/settings_page/list_tile.dart';
import 'package:fitflex_homeworkout/main/reports/settings_page/mail_tile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const PrivacyPolicy()));
                  },
                  child: const SListTile(
                      icon: AppIcons.policy, text: 'Privacy & policy')),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const TermsConditions()));
                  },
                  child: const SListTile(
                      icon: AppIcons.termsAndConditions,
                      text: 'Terms & conditions')),
              const MailListTile(
                  icon: AppIcons.mail,
                  text: 'Feed back',
                  recipientEmail: 'mohsinjr1854@gmail.com'),
              SizedBox(height: mediaQuery.size.height * 0.5),
              const Text(
                'Version 1.0.1',
                style: TextStyle(
                    color: AppColors.grey, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
