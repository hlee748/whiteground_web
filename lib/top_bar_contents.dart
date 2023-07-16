import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({super.key});

  @override
  TopBarContentsState createState() => TopBarContentsState();
}

class TopBarContentsState extends State<TopBarContents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
      children: [
        Image.asset('assets/png/whiteground_logo.png'),
        const Spacer(
          flex: 2,
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/service');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/png/mobile.png',scale: 10, ),
            ],
          ),
        ),
        const SizedBox(width: 24,),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/contact');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/png/document.png',scale: 10, ),
            ],
          ),
        ),
        const SizedBox(width: 24,),
      ],
      )
      // Expanded(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       SizedBox(width: screenSize.width/4,),
      //       Image.asset('assets/png/whiteground_logo.png'),
      //       Container(
      //         child:
      //         Row(
      //           children: [
      //             InkWell(
      //               onTap: (){},
      //               child: Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   Image.asset('assets/png/mobile.png',scale: 10, ),
      //                   SizedBox(width: screenSize.width / 15,),
      //                 ],
      //               ),
      //             ),
      //             InkWell(
      //               onTap: (){},
      //               child: Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   Image.asset('assets/png/document.png',scale: 10, ),
      //                   SizedBox(width: screenSize.width / 15,),
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}