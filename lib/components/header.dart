import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 2),
          SearchBar(
            elevation: const WidgetStatePropertyAll(0),
              padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 2)),
              backgroundColor: const WidgetStatePropertyAll(Colors.white),
              leading: const Icon(Icons.search_sharp, color: Colors.grey,),
              hintText: 'Search',
              hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.grey[400])),
              trailing: const [Icon(Icons.camera_alt_outlined, color: Colors.grey,)],
            ),
        ],
      ),
    );
  }
}