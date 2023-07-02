import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whiteground_web/appbar.dart';

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
    return Scaffold(
      body: Column(
        children: [
          const MyAppBar(),
          Expanded(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }
              ),
              child: ListView(
                controller: _controller,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child: Image.asset('png/group121.png', fit: BoxFit.cover,),
                  ),
                  Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          'SERVICE',
                          style: TextStyle(fontSize: 24),),
                        SizedBox(height: 24,),
                        Row(
                          children: [
                            Image.asset('png/snowrun_ic.png',scale: 1.5,),
                            SizedBox(width: 24,),
                            Text('SnowRun')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                  Container(width: 100, height: 200,color: Colors.black,),
                ],
              ),
            ),

          )
          // Expanded(
          //     child: Column(
          //       children: [
          //         AspectRatio(aspectRatio: 16/9,
          //           child:Image.asset('png/group121.png', fit: BoxFit.contain,), ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //         Container(
          //             color: Colors.yellow,
          //             padding: EdgeInsets.all(24),
          //             child: Text('COMEING SOON')
          //         ),
          //       ],
          //     )
          // ),
        ],
      )
    );
  }
}
