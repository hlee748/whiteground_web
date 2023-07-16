import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whiteground_web/appbar.dart';
import 'package:whiteground_web/responsive.dart';

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
      appBar: ResponsiveWidget.isSmallScreen(context) ?
      AppBar(
        elevation: 0,
        leading: Image.asset('assets/png/whiteground_ic.png',),
        title: const Text('WHITEGROUND', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton<PopupMenuItems>(
            color: Colors.grey,
            initialValue: selectedMenu,
              onSelected: (PopupMenuItems item){
                setState((){
                    selectedMenu = item;
                });
              },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenuItems>>[
              PopupMenuItem(
                value: PopupMenuItems.service,
                  child: Row(
                    children: [
                      Image.asset('assets/png/mobile.png', scale: 12,),
                      SizedBox(width: 24,),
                      const Text('서비스')
                    ],
                  )
              ),
            ]
              // itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenuItem>>[
              //   PopupMenuItem<PopupMenuItem>(
              //     value: PopupMenuItem.service,
              //         child: Text('3'),
              //     ),
              //   PopupMenuItem<PopupMenuItem>(
              //     value: PopupMenuItem.contact,
              //     child: Text('3'),
              //   ),
              // ]
          ),
          // IconButton(
          //     onPressed: (){},
          //     icon: const Icon(Icons.dehaze_rounded, color: Colors.black,)
          // )
        ],
      ) :
      const MyAppBar(),
      body:
      ListView(
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

