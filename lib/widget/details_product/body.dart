import 'package:flutter/material.dart';
import 'package:shop_app/model/constant.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/widget/details_product/add_to_card.dart';
import 'package:shop_app/widget/details_product/color_and_size.dart';
import 'package:shop_app/widget/details_product/counter_with_fav_btn.dart';
import 'package:shop_app/widget/details_product/discription.dart';
import 'package:shop_app/widget/details_product/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

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
                    left: kDefaultPadding,
                    right: kDefaultPadding,
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
                      ColorAndSize(product: product),
                      DIscrription(product: product),
                      const Spacer(),
                      const CounterWithFavBtn(),
                      AddToCart(product: product),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
