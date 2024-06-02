import 'package:flutter_choco_grid/pages/explore_page.dart';
import 'package:flutter_choco_grid/pages/history_page.dart';
import 'package:flutter_choco_grid/pages/profile_page.dart';
import 'package:flutter_choco_grid/pages/search_page.dart';
import 'package:flutter_choco_grid/pages/wardrobe_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  final List<Widget> _destinations = const [
    NavigationDestination(icon: Icon(Icons.image_search_outlined, color: Colors.white,), label: 'Search'),
    NavigationDestination(icon: Icon(Icons.history,), label: 'History'),
    NavigationDestination(icon: Icon(Icons.checkroom_rounded,), label: 'Wardrobe'),
    NavigationDestination(icon: Icon(Icons.explore_outlined,), label: 'Explore'),
    NavigationDestination(icon: Icon(Icons.person_outline_rounded,), label: 'Profile'),
  ];

  final List<Widget> _pages = const [
    SearchPage(),
    HistoryPage(),
    WardrobePage(),
    ExplorePage(),
    ProfilePage(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        foregroundColor: Colors.white,
        // iconTheme: const IconThemeData(color: Colors.white70),
        elevation: 0,
        leading: const Icon(Icons.menu_sharp),
        title: const CircleAvatar(
          backgroundImage: AssetImage('lib/images/mylogo.png'),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          height: 68,
          labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white70)),
          iconTheme: WidgetStatePropertyAll(IconThemeData(color: Colors.grey)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: NavigationBar(
            destinations: _destinations,
            selectedIndex: currentPageIndex,
            onDestinationSelected: _onNavItemTapped,
            backgroundColor: Colors.grey[800],
            indicatorColor: Colors.transparent,
          ),
        ),
      ),

      body: _pages[currentPageIndex],
    );
  }
}