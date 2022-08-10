import 'package:flutter/material.dart';
import 'package:food_waste_tracker/screens/list_screen.dart';
import 'package:food_waste_tracker/screens/new_post_screen.dart';
import 'package:food_waste_tracker/screens/detail_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  static const routes = <String, WidgetBuilder>{
    '/list': (BuildContext context) => const ListScreen(),
    '/new': (BuildContext context) => NewPostScreen(),
    '/detail': (BuildContext context) => const DetailScreen(),
  };


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), routes: ,
    );
  }
}
