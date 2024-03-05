// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, unnecessary_null_comparison, use_build_context_synchronously, prefer_const_constructors

import 'dart:io';

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/detail_page.dart';
import 'package:fitflex_homeworkout/constants/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class AdminSilverAppBarWithChangingTextColor extends StatefulWidget {
  final String text;
  final String assetImage;
  final String collection;
  const AdminSilverAppBarWithChangingTextColor({
    required this.text,
    required this.assetImage,
    Key? key,
    required this.collection,
  }) : super(key: key);

  @override
  _AdminSilverAppBarWithChangingTextColorState createState() =>
      _AdminSilverAppBarWithChangingTextColorState();
}

class _AdminSilverAppBarWithChangingTextColorState
    extends State<AdminSilverAppBarWithChangingTextColor> {
  ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _isScrolled = _scrollController.hasClients &&
          _scrollController.offset >
              (_scrollController.position.minScrollExtent + 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection(widget.collection)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if(snapshot.data == null || snapshot.data!.docs.isEmpty){
            return const Center(
                child:  Text(
                  'Add Exercises here!!',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
          }
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back, color: AppColors.white),
                ),
                backgroundColor: AppColors.transparant,
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    widget.text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _isScrolled ? AppColors.black : AppColors.white,
                    ),
                  ),
                  background: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      AppColors.black.withOpacity(0.5),
                      BlendMode.srcOver,
                    ),
                    child: Image.asset(
                      widget.assetImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final data = snapshot.data!.docs[index];
                    String docId = data.id;
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ExerciseDetails(id: data.id, collectionNames: widget.collection)));
                                    },
                                    icon: const Icon(Icons.menu)),
                                SizedBox(
                                    width: 80,
                                    height: 90,
                                    child: Image.network(data['image'])),
                              ],
                            ),
                            title: Text(
                              data['description'],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                                  deleteBegExercise(docId);
                                                  deleteInterExercise(docId);
                                                  deleteAdvExercise(docId);
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
                                    icon: const Icon(Icons.delete),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      String newDescription =
                                          data['description'];
                                      String newImage =
                                          ''; // Initialize with an empty string

                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return AlertDialog(
                                                title:
                                                    const Text('Edit Exercise'),
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(
                                                        width: 100,
                                                        height: 100,
                                                        child: newImage.isEmpty
                                                            ? Image.network(
                                                                data['image'])
                                                            : Image.file(File(
                                                                newImage))),
                                                    IconButton(
                                                      onPressed: () async {
                                                        final pickedImage =
                                                            await ImagePicker()
                                                                .pickImage(
                                                          source: ImageSource
                                                              .gallery,
                                                        );

                                                        if (pickedImage !=
                                                            null) {
                                                          setState(() {
                                                            newImage =
                                                                pickedImage
                                                                    .path;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            newImage = '';
                                                          });
                                                        }
                                                      },
                                                      icon: const Icon(
                                                          Icons.photo),
                                                    ),
                                                    TextFormField(
                                                      initialValue:
                                                          newDescription,
                                                      onChanged: (value) {
                                                        newDescription = value;
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
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: ()  {
                                                       editBeginner(
                                                          docId,
                                                          newDescription,
                                                          newImage);
                                                       editIntermediate(
                                                          docId,
                                                          newDescription,
                                                          newImage);
                                                       editAdvanced(
                                                          docId,
                                                          newDescription,
                                                          newImage);

                                                      Navigator.of(context)
                                                          .pop();
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
                                    icon: const Icon(Icons.edit),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                  childCount: snapshot.data!.docs.length,
                ),
              ) // Add other slivers below if needed
            ],
          );
        },
      ),
    );
  }
}
