import 'package:flutter/material.dart';
import 'package:food_waste_tracker/screens/detail_screen.dart';

import '../models/post.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Center(
        child: Text('List'),
      ),
    );
  }
}

// TODO: Add a ListView widget to display the posts.

// TODO: Add a floating action button to add a new post using Camera and Gallery.

// TODO: Find a way to pass the post to the detail screen.
void _pushDetailsScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailScreen(
        post: Post(
          latitude: 0.0,
          longitude: 0.0,
          quantity: 1,
          photoUrl: 'https://picsum.photos/250?image=9',
          date: DateTime.now(),
        ),
      ),
    ),
  );
}
