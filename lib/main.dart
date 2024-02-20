import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              // color: Colors.grey[300],
              color: Colors.grey[850],
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              boxShadow: const [
                BoxShadow(
                    // color: Colors.grey,
                    color: Colors.black87,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    // color: Colors.white,
                    color: Colors.white12,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
          child: const Icon(
            Icons.android,
            size: 80,
            // color: Colors.black,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
