import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whiteground_web/appbar.dart';

enum PopupMenuItems {service, contact}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final ScrollController _controller = ScrollController();
  PopupMenuItems? selectedMenu;
  // Controllers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        MyAppBar(),
        // Stack(
        //   children: [
        //     ListView(
        //       controller: _controller,
        //       physics: const AlwaysScrollableScrollPhysics(),
        //       scrollDirection: Axis.vertical,
        //       children: const [
        //         HomePageContent(),
        //         Footer(),
        //       ],
        //     ),
        //     const Positioned(
        //       top: 0,
        //         left: 0,
        //         right: 0,
        //         child: MyAppBar(),
        //     ),
        //   ],
        // ),

      // ListView(
      //   controller: _controller,
      //   physics: const AlwaysScrollableScrollPhysics(),
      //   scrollDirection: Axis.vertical,
      //   children: const [
      //     HomePageContent(),
      //     Footer(),
      //   ],
      // ),
    );
  }

}

class MenuItem {
  const MenuItem({
    required this.icon,
    required this.text,
});
  final String text;
  final String icon;
}

abstract class MenuItems {
  static const List<MenuItem> dropDownItems = [service, member];

  static const service = MenuItem(text: 'Service', icon: 'assets/png/mobile.png');
  static const member = MenuItem(text: 'Member', icon: 'assets/png/document.png');

  static Widget buildItem(MenuItem item){
    return Row(
      children: [
        Image.asset(item.icon, scale: 12,),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.service:
      //Do something
        break;
      case MenuItems.member:
      //Do something
        break;
    }
  }

}


// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const MyAppBar({super.key});
//
//   @override
//   Size get preferredSize => const Size.fromHeight(100);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Flexible(
//               child:  Image.asset(
//                 'assets/png/whiteground_logo.png',
//                 scale: 2,
//               ),
//           ),
//           const NavBar(),
//           // const Flexible(
//           //     child: NavBar(),
//           // ),
//         ],
//       ),
//     );
//   }
// }



class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
      child: Column(
        children: [
          Image.asset('assets/png/whiteground_bg.png'),
          const Column(
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
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 400,
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

