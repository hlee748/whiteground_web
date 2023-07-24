import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Container(
          height: 200,
          color: Colors.black,
          child: const Column(
            children: [
              SizedBox(height: 40,),
              Text('WHITEGROUND', style: TextStyle(color: Colors.white),),
              Text('whitegroundTeam@gmail.com', style: TextStyle(color: Colors.white),),
              Text('CEO - 이현주', style: TextStyle(color: Colors.white),),
              Text('BUSINESS NUMBER. 625-15-02169', style: TextStyle(color: Colors.white),),
              Text('©WHITEGROUND', style: TextStyle(color: Colors.white),),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PRIVACY POLICY', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),),
                  SizedBox(width: 12,),
                  Text('TERMS & CONDITIONS GUIDE', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
