import 'package:flutter/material.dart';
import 'package:whiteground_web/footer.dart';
import 'package:whiteground_web/sliver_app_bar.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            sliver: TopBar(),
          ),
          SliverToBoxAdapter(
            child: Stack(
              alignment: Alignment.center,
                children: [
                  const Text('COMMING\n SOON',
                    style: TextStyle(color: Colors.grey, fontSize: 64, letterSpacing: 10),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset('assets/png/service_picture.png')
                ]
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
