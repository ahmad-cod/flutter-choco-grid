import 'package:flutter/material.dart';

class MyNavbar extends StatefulWidget {
  
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {

  final List<Widget> _destinations = const [
    NavigationDestination(icon: Icon(Icons.image_search), label: 'Search'),
    NavigationDestination(icon: Icon(Icons.history), label: 'History'),
    NavigationDestination(icon: Icon(Icons.style), label: 'Wardrobe'),
    NavigationDestination(icon: Icon(Icons.explore_outlined), label: 'Explore'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ];



  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.black,
      destinations: _destinations,
    );
  }
}