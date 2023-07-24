import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      automaticallyImplyLeading: false,
      pinned: true,
      title: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/');
          },
          child: Image.asset('assets/png/whiteground_logo.png', scale: 1.5,)),
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