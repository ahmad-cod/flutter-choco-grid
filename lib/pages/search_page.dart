import 'package:flutter_choco_grid/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_choco_grid/components/products_grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyHeader(),
        Expanded(
          child: Container(
            height: 1000,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const ProductsGrid()
          )
        ),
      ],
    );
  }
}