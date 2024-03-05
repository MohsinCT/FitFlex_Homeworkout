import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/detail_page_main.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody/prepare_maincat.dart';

import 'package:flutter/material.dart';

class ListExercise extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String collection;

  const ListExercise({Key? key, required this.title, required this.collection})
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
                  "Admin did n't added any workout yet!!!",
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
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => BeReady(
                                  id: data.id, collectionName: collection)));
                        },
                        icon: const Icon(Icons.play_arrow),
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
