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
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? Colors.black87 : Colors.grey,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? Colors.white12 : Colors.white,
                        offset: const Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
              child: Icon(
                Icons.android,
                size: 80,
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text('Dark'),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        darkMode = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: const Text('Light'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
