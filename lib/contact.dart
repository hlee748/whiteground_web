import 'package:flutter/material.dart';
import 'package:whiteground_web/appbar.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0),
        child: ListView(
          controller: controller,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const Text("TEAM", style: TextStyle(fontSize: 80),),
            const SizedBox(height: 48,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  Image.asset('assets/png/julie.png', scale: 2,),
                  Image.asset('assets/png/dan.png', scale: 2,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}