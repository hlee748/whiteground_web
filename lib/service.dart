import 'package:flutter/material.dart';
import 'package:whiteground_web/appbar.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  const MyAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("COMMINGSOON", style: TextStyle(fontSize: 80),),
              const SizedBox(height: 100,),
              Image.asset(
                'assets/png/snowrun_ic.png',
                scale: 1,
              ),
              const SizedBox(height: 40,),
              const Text(
                'SnowRun',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
        ),
      ),
    );
  }
}
