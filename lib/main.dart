import 'package:flutter/material.dart';
import 'package:foodapp/Screen/home_Screern.dart';
import 'package:foodapp/auth/sign_in.dart';

import 'Screen/productview/productoverview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //ProductOverView(),
      HomeScreen(),
    );
  }
}




