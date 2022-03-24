import 'package:flutter/material.dart';
import 'package:shop_app/model/constant.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/screen/add_product.dart';
import 'package:shop_app/screen/details_product_screen.dart';
import 'package:shop_app/widget/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
            ),
            itemBuilder: (context, index) => ItemCardWidget(
              product: product[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailsProductScreen(product: product[index]),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddProduct(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
