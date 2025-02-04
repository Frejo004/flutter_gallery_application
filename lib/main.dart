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
        backgroundColor: const Color.fromARGB(255, 179, 97, 109),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Mon application")),
        ),

        body: MainController(),
      ) ,
    );
  }
}

class MainController extends StatelessWidget {
  const MainController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Gallery",
          style: TextStyle(
            fontSize: 30,
            color: Colors.green[500],
            fontWeight: FontWeight.w900,
          )),
        ),
        Container(
          child: Text("Categories",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red[500],
            fontWeight: FontWeight.w900,
          )),
        ),
      ],
    );
  }
}
