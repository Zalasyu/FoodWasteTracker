import 'package:flutter/material.dart';
import 'package:food_waste_tracker/models/post.dart';

class DetailScreen extends StatelessWidget {
  final Post post;
  const DetailScreen({super.key, required this.post});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Text('Detail'),
      ),
    );
  }
}

void _popScreen(BuildContext context) {
  Navigator.pop(context);
}
