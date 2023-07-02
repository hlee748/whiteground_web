import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whiteground_web/contact.dart';
import 'package:whiteground_web/service.dart';

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
      title: 'Flutter Demo',
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
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'png/whiteground_logo.png',
                  scale: 2,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Service()));
                      },
                      child: Image.asset(
                        'png/mobile.png',
                        scale: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Contact()));
                      },
                      child: Image.asset(
                        'png/document2.png',
                        scale: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            // const MyAppBar(),
            Expanded(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: ListView(
                  controller: _controller,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.asset(
                      'jpeg/whiteground_bg2.jpeg',
                    ),
                    Container(
                      // color: Colors.blue,
                      padding: const EdgeInsets.all(24),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 100.0),
                        child: Column(
                          children: [
                            const Text(
                              'APP',
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            ),
                            const SizedBox(
                              height: 34,
                            ),
                            Row(
                              children: [
                                Center(
                                  child: Container(
                                    // color: Colors.yellow,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'png/snowrun_ic.png',
                                          scale: 1,
                                        ),
                                        const SizedBox(
                                          width: 60,
                                        ),
                                        const Column(
                                          children: [
                                            Text(
                                              'SnowRun',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 120,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 100,
                      height: 200,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 100.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'png/instagram.png',
                                scale: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'WHITEGROUND',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'develop@smallestapp.com',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              '@2023 WHITEGROUND- All Right Reserved',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
