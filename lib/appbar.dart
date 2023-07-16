import 'package:flutter/material.dart';
import 'package:whiteground_web/top_bar_contents.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return
    //   AppBar(
    //   toolbarHeight: 100,
    //   elevation: 0,
    //   automaticallyImplyLeading:false,
    //   title: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       InkWell(
    //         onTap: (){
    //           Navigator.pushNamed(context, '/');
    //         },
    //         child: Image.asset('assets/png/whiteground_logo.png',fit: BoxFit.fitWidth,
    //           height: MediaQuery.of(context).size.height * 0.3,
    //           width: MediaQuery.of(context).size.width * 0.2,
    //         ),
    //       )
    //     ],
    //   ),
    //   backgroundColor: Colors.white,
    //   actions: const [
    //     NavBar(),
    //   ],
    // );
    PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70),
        child: const TopBarContents(),
    );
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