// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MailListTile extends StatefulWidget {
  final IconData icon;
  final String text;
  final String recipientEmail;

  const MailListTile(
      {super.key,
      required this.icon,
      required this.text,
      required this.recipientEmail});
  @override
  State<MailListTile> createState() => _MailListTile();
}

class _MailListTile extends State<MailListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _sendEmail(widget.recipientEmail);
      },
      child: ListTile(
        leading: Icon(widget.icon),
        title: Text(widget.text),
      ),
    );
  }
}

 void _sendEmail(String recipientEmail) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: recipientEmail,
    );

    try {
      await launch(emailLaunchUri.toString());
    } catch (e) {
      print('Could not launch email: $e');
    }
  }

