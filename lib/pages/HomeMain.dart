import 'package:fcui_instagram_2020/pages/Home.dart';
import 'package:fcui_instagram_2020/pages/Search.dart';
import 'package:fcui_instagram_2020/misc/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  // Tabbar
  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
    print(index);
  }

  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    SearchPage(),
    SearchPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _children[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: blackColor,
          onTap: onTapped,
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset(iconHomeD, width: 26.0, color: whiteColor),
              icon: SvgPicture.asset(iconHome, width: 26.0, color: whiteColor),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset(iconSearch, width: 26.0, color: whiteColor),
              icon:
                  SvgPicture.asset(iconSearch, width: 26.0, color: whiteColor),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset(iconPlusD, width: 26.0, color: whiteColor),
              icon: SvgPicture.asset(iconPlus, width: 26.0, color: whiteColor),
              title: Text("Plus"),
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset(iconHeartD, width: 26.0, color: whiteColor),
              icon: SvgPicture.asset(iconHeart, width: 26.0, color: whiteColor),
              title: Text("Heart"),
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30.0,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset("assets/images/profile_01.jpg",
                      fit: BoxFit.cover),
                ),
              ),
              title: Text("Account"),
            ),
          ],
        ),
      ),
    );
  }
}
