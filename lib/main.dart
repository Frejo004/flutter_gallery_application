import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red[50],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Mon application")),
        ),

        body: Container(
          child: Text("Gallery",
          style: TextStyle(
            fontSize: 30,
            color: Colors.green[500],
            fontWeight: FontWeight.w900,
          )),
        ),
      ) ,
    );
  }
}
