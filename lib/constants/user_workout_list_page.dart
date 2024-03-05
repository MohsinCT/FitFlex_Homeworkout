// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/detail_page.dart';
import 'package:fitflex_homeworkout/user/workout_start/prepare.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SilverAppBarWithChangingTextColor extends StatefulWidget {
  final String text;
  final String assetImage;
  final String collection;

  const SilverAppBarWithChangingTextColor({
    required this.text,
    required this.assetImage,
    Key? key,
    required this.collection,
  }) : super(key: key);

  @override
  _SilverAppBarWithChangingTextColorState createState() =>
      _SilverAppBarWithChangingTextColorState();
}

class _SilverAppBarWithChangingTextColorState
    extends State<SilverAppBarWithChangingTextColor> {
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
            } else if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
              return const Center(
                child:  Text(
                  "Admin did n't added any workout yet!!!",
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
                          color: _isScrolled ? AppColors.black :AppColors.white,
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
                                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ExerciseDetails(id: data.id, collectionNames: widget.collection)));
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
                                trailing: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                     GetReady(id: data.id,collectionName: widget.collection,)));
                                    },
                                    icon: const Icon(Icons.play_arrow)),
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
            
          }),
    );
  }
}
