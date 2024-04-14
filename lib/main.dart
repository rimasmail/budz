
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttter/View/Screen/creercompte.dart';

import 'View/Screen/Login.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Login(),
        theme: ThemeData(
          primaryColor: Colors.lightGreen,
           // fontFamily: ////////////
            appBarTheme :AppBarTheme(
           // backgrounfColor : ////////
        ),
         textTheme: TextTheme(
            bodySmall: TextStyle(color: Colors.orangeAccent),
            bodyMedium: TextStyle(color: Colors.lightGreen),

        )
    ),

    routes: {


      },
    );
  }
}











