import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          // color: Colors.pink,
          width: 120,
          child: Image.asset('png/whiteground_ic.png'),
        ),
        const Text(
          'WHITEGROUND',
          style: TextStyle(
              fontSize: 24
          ),
        ),
        SizedBox(
          // color: Colors.green,
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('png/mobile.png', scale: 10,),
              Image.asset('png/document.png', scale: 10,),
            ],
          ),
        ),
      ],
    );
  }
}
