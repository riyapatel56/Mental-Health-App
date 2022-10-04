import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/screens/home_screen.dart';

import 'screens/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  //multiprovider
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  //multiproviders
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'beauty app',
      //home: MyHomePage(),
      home: HomeScreen(),
    );
  }
}