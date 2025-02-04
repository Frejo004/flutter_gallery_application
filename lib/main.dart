import 'package:flutter/material.dart';
import 'screen/home.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Roboto",
      ),

      home:Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 203, 207),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Mon application")),
        ),

        body: MainController(),
      ) ,
    );
  }
}