import 'package:flutter/material.dart';
import 'package:food_waste_tracker/screens/list_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  // TODO: Add a drawer to the app.

  // build the app's home screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListScreen(),
    );
  }
}
