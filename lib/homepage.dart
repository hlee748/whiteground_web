import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: ListView(
        controller: _controller,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [
          HomePageContent(),
          Footer(),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child:  Image.asset(
                'assets/png/whiteground_logo.png',
                scale: 2,
              ),
          ),
          const NavBar(),
          // const Flexible(
          //     child: NavBar(),
          // ),
        ],
      ),
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

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/jpeg/whiteground_bg.jpeg'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0),
          child: Column(
            children: [
              Text(
                'APP',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
          child: Row(
            children: [
              Flexible(
                  child: Image.asset(
                    'assets/png/snowrun_ic.png',
                    scale: 1,
                  ),
              ),
              const SizedBox(
                width: 60,
              ),
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
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
        child: Column(
          children: [
            InkWell(
              onTap: () => launchUrl(Uri.parse('https://instagram.com/snowrun__?igshid=OGQ5ZDc2ODk2ZA==')),
              child: Image.asset('assets/png/instagram.png', scale: 18),
            ),
            const SizedBox(height: 12),
            const Text('WHITEGROUND', style: TextStyle(color: Colors.white)),
            const Text('develop@smallestapp.com', style: TextStyle(color: Colors.white)),
            const Text('@2023 WHITEGROUND- All Right Reserved', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

