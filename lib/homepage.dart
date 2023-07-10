import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget{
  final ScrollController _controller = ScrollController();
  HomePage({super.key});

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
                  'assets/png/whiteground_logo.png',
                  scale: 2,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/service');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Service()));
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
                        Navigator.pushNamed(context, '/contact');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Contact()));
                      },
                      child: Image.asset(
                        'assets/png/document.png',
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
                      'assets/jpeg/whiteground_bg.jpeg',
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
                              'APPs',
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
                                          'assets/png/snowrun_ic.png',
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
                              onTap: () {
                                launchUrl(Uri.parse('https://instagram.com/snowrun__?igshid=OGQ5ZDc2ODk2ZA=='));
                                print('눌림');
                              },
                              child: Image.asset(
                                'assets/png/instagram.png',
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
        )
    );
  }
}


