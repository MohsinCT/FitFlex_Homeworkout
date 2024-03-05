// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, avoid_print, sort_child_properties_last, use_build_context_synchronously

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/user/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserName extends StatefulWidget {
  @override
  UserNameState createState() => UserNameState();
}

class UserNameState extends State<UserName> {
  TextEditingController _userNameController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormFieldState> _userform = GlobalKey<FormFieldState>();
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'User',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Stack(children: [
            Image.asset(
              Images.backgroundImg,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.7),
            ),
            Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      key: _userform,
                      onChanged: (value) {
                        _userform.currentState?.validate();
                      },
                      controller: _userNameController,
                      decoration: InputDecoration(
                        labelText: 'Enter Name',
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(Icons.person, color: Colors.white),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Name';
                        } else {
                          return null;
                        } 
                      },
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        _user();
                      },
                      child: Text('Lets Start'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.white, // Adjust color to fit the workout theme
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }

  void _user() async {
    if (_formKey.currentState!.validate()) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user', _userNameController.text);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
    }
  }
}
