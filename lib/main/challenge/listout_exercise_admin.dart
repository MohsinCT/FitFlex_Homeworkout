import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/services/firebase.dart';
import 'package:fitflex_homeworkout/main/challenge/detail_page_main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ListExerciseAdmin extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String collection;

  const ListExerciseAdmin(
      {Key? key, required this.title, required this.collection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection(collection).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text(
                  "Add Execise here!!!",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }
            return ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                final data = snapshot.data!.docs[index];
                String docId = data.id;
                return Column(
                  children: [
                    ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => ExerciseDetailMain(
                                        id: data.id, collection: collection)));
                              },
                              icon: const Icon(Icons.menu)),
                          SizedBox(
                            width: 80,
                            height: 90,
                            child: Image.network(data['image']),
                          )
                        ],
                      ),
                      title: Text(
                        data['Exercise'],
                        style: const TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      trailing: SizedBox(
                        width: 100,
                        height: 60,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Confirm Delete'),
                                        content: const Text(
                                            'Are you sure you want to delete this exercise?'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              deleteFullBodyExercise(docId);
                                              deleteLowerBodyExercise(docId);
                                            },
                                            child: const Text('Yes'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('No'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.delete)),
                            IconButton(
                                onPressed: () {
                                  String newExercise = data['Exercise'];
                                  String newImage = '';
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                          return AlertDialog(
                                            title: const Text('Edit Exercise'),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                    width: 100,
                                                    height: 100,
                                                    child: newImage.isEmpty
                                                        ? Image.network(
                                                            data['image'])
                                                        : Image.file(
                                                            File(newImage))),
                                                IconButton(
                                                  onPressed: () async {
                                                    final pickedImage =
                                                        await ImagePicker()
                                                            .pickImage(
                                                      source:
                                                          ImageSource.gallery,
                                                    );

                                                    if (pickedImage != null) {
                                                      setState(() {
                                                        newImage =
                                                            pickedImage.path;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        newImage = '';
                                                      });
                                                    }
                                                  },
                                                  icon: const Icon(Icons.photo),
                                                ),
                                                TextFormField(
                                                  initialValue: newExercise,
                                                  onChanged: (value) {
                                                    newExercise = value;
                                                  },
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Exercise',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  editFullBodyExercise(docId,
                                                      newExercise, newImage);
                                                  editLowerBodyExercise(docId,
                                                      newExercise, newImage);
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Save'),
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.edit))
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: snapshot.data!.docs.length,
            );
          },
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
