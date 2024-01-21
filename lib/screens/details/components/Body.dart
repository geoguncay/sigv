import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import 'color_size.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product,),
                      const SizedBox(height: kDefaultPaddin / 2),
                      // Description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      // CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      // AddToCart(product: product)
                    ],
                  ),
                ),
                // ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

