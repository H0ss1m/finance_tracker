import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:finance_tracker/module/color.dart';
import 'package:finance_tracker/view/pages/homePage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _bottomNavIndex = 0;
List<IconData> iconList = [
  Icons.home,
  Icons.bar_chart,
  Icons.pie_chart,
  Icons.person,
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      homePage(context: context),
      const Center(child: Text('Stats Page')),
      const Center(child: Text('Analytics Page')),
      const Center(child: Text('Profile Page')),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mainColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: mainColor,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'Finance Tracker',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const Drawer(),
      body: pages[_bottomNavIndex],
    );
  }
}
