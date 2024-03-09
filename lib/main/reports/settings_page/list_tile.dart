// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';


class SListTile extends StatefulWidget{
  final IconData icon;
  final String text;

  const SListTile({super.key, required this.icon,required this.text});
  @override
  State<SListTile> createState()=> _SListTile();
}
class _SListTile extends State<SListTile>{
  @override
  Widget build(BuildContext context){
    return ListTile(
      leading:Icon(widget.icon),
      title: Text(widget.text),
    );
  }
}

