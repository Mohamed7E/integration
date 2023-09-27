import 'package:flutter/material.dart';
import 'package:irrigation/Home/Home.dart';
import 'package:provider/provider.dart';

import 'Share/cart.dart';
import 'Welcome/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Smart Irrigation',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Welcome1(),
    return ChangeNotifierProvider(
        create: (context) {
      return Cart();
    },
    child: const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    ),
    );
  }
}
