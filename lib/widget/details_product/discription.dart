import 'package:flutter/material.dart';
import 'package:shop_app/model/constant.dart';
import 'package:shop_app/model/product.dart';

class DIscrription extends StatelessWidget {
  const DIscrription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Text(
        product.discreption,
        style: const TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
