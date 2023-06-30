import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
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
        Container(
          // color: Colors.green,
          width: 200,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone_iphone, size: 60,),
              Icon(Icons.subject_rounded, size: 60,)
            ],
          ),
        ),
      ],
    );
  }
}
