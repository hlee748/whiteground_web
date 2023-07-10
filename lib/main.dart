import 'package:flutter/material.dart';
import 'package:whiteground_web/contact.dart';
import 'package:whiteground_web/homepage.dart';
import 'package:whiteground_web/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whiteground',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/service': (context) => const Service(),
        '/contact': (context) => const Contact(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
// }
