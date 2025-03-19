// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';
import 'package:t_urban_india/features/home/presentation/screens/home_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:t_turban_india/Add_image_page.dart';
// import 'package:t_turban_india/add_info_page.dart';
// import 'package:t_turban_india/add_youtube_link_page.dart';
// import 'package:t_turban_india/home.dart';
// import 'package:t_turban_india/mapScreen.dart';
// import 'package:t_turban_india/shoppingScreen.dart';
// import 'package:t_turban_india/webviewScreen.dart';

import 'package:url_launcher/url_launcher.dart';

// import 'howtouseapp.dart';
// import 'aboutUs.dart';
// import 'modalScreen.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key, this.currentIndex = 0});

  int currentIndex;
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TabController? _controller;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    // const LoginScreen(),
    // const SignUpScreen(),
    // const LoginScreen(),
    // const LoginScreen(),
    // const LoginScreen(),
    // const MapScreen(),
    // const ModalScreen(),
    // const ModalScreen(),
    // // const WebviewScreen(url: 'https://da04-117-254-209-20.in.ngrok.io/'),
    // ShoppingScreen()
  ];

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Colors.black,
        ),
        title: Text(
          "Hello, Abhineya",
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: ConstantColors.black),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              launchUrl(
                Uri.parse(
                  'https://drive.google.com/file/d/1jVUIvzb1MD__Mt-0DbnixbobwcJHx8N4/view?usp=drivesdk',
                ),
              );
            },
            child: Text(
              'Brochure',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          const SizedBox(width: 10),
        ],
        backgroundColor: ConstantColors.white,
        elevation: 0,
      ),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.white,
        initialActiveIndex: widget.currentIndex,
        controller: _controller,
        items: [
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: SvgPicture.asset(
                'assets/images/ic_home.svg',
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: SvgPicture.asset(
                'assets/images/ic_maps.svg',
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: SvgPicture.asset(
                'assets/images/ic_add.svg',
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: SvgPicture.asset(
                'assets/images/ic_filters.svg',
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: SvgPicture.asset(
                'assets/images/ic_shop.svg',
              ),
            ),
          ),
        ],
        onTap: (final index) {
          setState(() {
            widget.currentIndex = index;
          });
          if (widget.currentIndex == 2) {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              builder: (final BuildContext context) {
                return Container(
                  color: Colors.white,
                  height: 200,
                  width: 360,
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                // primary: Color(0xffEB3527), // <-- Button color
                                // onPrimary: Colors.red, // <-- Splash color
                              ),
                              child:
                                  SvgPicture.asset("assets/images/ic_post.svg"),
                            ),
                            const Text(
                              "Post",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 35.0,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                // primary: Color(0xffEB3527), // <-- Button color
                                // onPrimary: Colors.red, // <-- Splash color
                              ),
                              child: SvgPicture.asset(
                                "assets/images/ic_shareImage.svg",
                              ),
                            ),
                            const Text(
                              "Share",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 35.0,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                // primary: Color(0xffEB3527), // <-- Button color
                                // onPrimary: Colors.red, // <-- Splash color
                              ),
                              child: SvgPicture.asset(
                                "assets/images/ic_youtube.svg",
                              ),
                            ),
                            const Text(
                              "Add Link",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      body: _widgetOptions.elementAt(widget.currentIndex),
    );
  }
}
// ElevatedButton(
// child: const Text('Close BottomSheet'),
// onPressed: () => Navigator.pop(context),
// )




// drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xffEB3527),
//               ),
//               child: Center(
//                 child: Text(
//                   'T-Urban India',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: SvgPicture.asset("assets/ShareApp.svg"),
//               title: const Text('Share App'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: SvgPicture.asset("assets/HowToUse.svg"),
//               title: const Text('How to use ?'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//               },
//             ),
//             ListTile(
//               leading: SvgPicture.asset("assets/PrivacyPolicy.svg"),
//               title: const Text('Privacy Policy'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               // leading: SvgPicture.asset("assets/HowToUse.svg"),
//               leading: SvgPicture.asset("assets/About.svg"),
//               title: const Text('About Us'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//               },
//             ),
//             ListTile(
//               leading: SvgPicture.asset("assets/ic_logout.svg"),
//               title: const Text('Logout'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             const SizedBox(
//               height: 130,
//             ),
//             ListTile(
//               title: const Center(child: Text('Version : SIH 2123')),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),