import 'package:flutter/material.dart';
import 'package:flutter_choco_grid/models/product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: MasonryGridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset('lib/images/${product.imgPath}.jpg', width: 170,)
                        ),
                        SizedBox(
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(product.name),
                                    const SizedBox(height: 5,),
                                    Text(product.group)
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text('from'),
                                    const SizedBox(height: 5,),
                                    Text("₦${product.price.toString()}")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  );
              }
                  ),
        ));
  }
}
