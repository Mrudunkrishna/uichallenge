import 'package:flutter/material.dart';
import 'package:uichallenge/homepage.dart';
import 'package:uichallenge/moviepage.dart';
import 'package:uichallenge/tvpage.dart';






class BottomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const TabBarView(
          children: [
            home(),
            movie(),
            Tv(),
            Text('data'),
          ],
        ),

        bottomNavigationBar: TabBar(
          dividerHeight: 0,
          enableFeedback: false,
          unselectedLabelColor: Colors.black,
          tabAlignment: TabAlignment.fill,
          overlayColor: MaterialStatePropertyAll(Colors.grey[300]),
          splashBorderRadius: BorderRadius.circular(60),
          splashFactory: InkSparkle.splashFactory,
          labelPadding: const EdgeInsets.only(left: 1, right: 1),
          indicator: const BoxDecoration(),
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
          tabs: [
            tabIconText(
              imagePath: 'assets/images/home.png',
              bottomIconText: '',
            ),
            tabIconText(
              imagePath: 'assets/images/tabclip.png',
              bottomIconText: '',
            ),
            tabIconText(
              imagePath: 'assets/images/tv.png',
              bottomIconText: '',
            ),
            tabIconText(
              imagePath: 'assets/images/calendar.png',
              bottomIconText: '',
            ),
            tabIconText(
              imagePath: 'assets/images/user.png',
              bottomIconText: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget tabIconText({required String imagePath, required String bottomIconText}) {
    return Tab(
      iconMargin: EdgeInsets.all(0.01),
      height: 55,
      icon: Image.asset(
        imagePath,
        width: 25,
        height: 25,
      ),
      text: bottomIconText,
    );
  }
}