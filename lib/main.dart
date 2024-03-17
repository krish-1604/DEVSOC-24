import 'package:empowerall/screens/welcome.dart';
import 'package:empowerall/splashscreen/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/Welcome': (context) => Welcome(),
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
