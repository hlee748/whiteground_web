import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: <Widget>[
          SliverPadding(padding: EdgeInsets.symmetric(horizontal: 100),
          sliver: SliverAppBar(
            backgroundColor: CupertinoColors.systemGrey3,
            floating: true,
            automaticallyImplyLeading: false,
            pinned: true,
            title: Image.asset('assets/png/whiteground_logo.png', scale: 1.5,),
            actions: <Widget>[
              Padding(padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/service');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/png/application.png', scale: 1.8, ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/png/team.png', scale: 1.8, ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12,),
                  ],
                ),)
            ],
          ),),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Image.asset('assets/png/home_paint.png'),
            )
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
                      const Text('APP', style: TextStyle(fontSize: 48),),
                      const SizedBox(height: 40,),
                      Row(
                        children: [
                          Image.asset('assets/png/snowrun_ic.png'),
                          const SizedBox(width: 24,),
                          const Text('SnowRun', style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),)
                        ],
                      )
                    ],
                  ),
                ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 64,),
          ),
          SliverToBoxAdapter(
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
          )
        ],
    );


    //   Container(
    //   height: 80,
    //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       SizedBox(
    //         height: double.infinity,
    //         width: 300,
    //         child: GestureDetector(
    //           onTap: (){
    //             Navigator.pushNamed(context, '/');
    //           },
    //             child: Image.asset("assets/png/whiteground_logo.png", fit: BoxFit.fill,)
    //         ),
    //       ),
    //       Row(
    //         children: [
    //           GestureDetector(
    //             onTap: (){
    //               Navigator.pushNamed(context, '/service');
    //             },
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 Image.asset('assets/png/mobile.png',scale: 10, ),
    //               ],
    //             ),
    //           ),
    //           const SizedBox(width: 12,),
    //           GestureDetector(
    //             onTap: (){
    //               Navigator.pushNamed(context, '/contact');
    //             },
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 Image.asset('assets/png/document.png',scale: 10, ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        NavBarItem(
          assetName: 'assets/png/mobile.png',
          routeName: '/service',
        ),
        SizedBox(width: 24),
        NavBarItem(
          assetName: 'assets/png/document.png',
          routeName: '/contact',
        ),
        SizedBox(width: 24),
      ],
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String assetName;
  final String routeName;

  const NavBarItem({super.key, required this.assetName, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, routeName),
      child: Image.asset(
        assetName,
        scale: 10,
      ),
    );
  }
}