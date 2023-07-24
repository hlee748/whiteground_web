import 'package:flutter/material.dart';
import 'package:whiteground_web/footer.dart';
import 'package:whiteground_web/sliver_app_bar.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            sliver: TopBar(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 64,),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text('Team', style: TextStyle(fontSize: 48),),
                   const SizedBox(height: 24,),
                   Row(
                     children: [
                       Image.asset('assets/png/julie.png'),
                       const Text('"Julie"'),
                     ],
                   ),
                   const SizedBox(height: 24,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Column(
                         children: [
                           Image.asset('assets/png/secret_weapon_1.png'),
                           const Text('"Secret Weapon1"'),
                         ],
                       ),
                       Column(
                         children: [
                           Image.asset('assets/png/secret_weapon_2.png'),
                           const Text('"Secret Weapon2"'),
                         ],
                       ),
                       Column(
                         children: [
                           Image.asset('assets/png/secret_weapon_3.png'),
                           const Text('"Secret Weapon3"'),
                         ],
                       ),
                     ],
                   )
                 ],
              ),
            )
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 64,),
          ),
          const Footer(),
        ],
      ),
    );
  }
}