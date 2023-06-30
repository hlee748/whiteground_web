import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: 100,
      child: Container(
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.pink,
              width: 100,
              child: Image.asset('png/whiteground_ic.png'),
            ),
            const Text(
              'WHITEGROUND',
              style: TextStyle(
                  fontSize: 24
              ),
            ),
            Container(
              color: Colors.green,
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
        ),
      ),
    );
  }
}
