 import 'package:flutter/material.dart';

import 'bmiresultscreen.dart';
import 'bmiscreen.dart';
main()=>runApp(App());
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}
