// ignore_for_file: must_call_super

import 'package:flutter/material.dart';

import '../model/constant.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController titleController = TextEditingController();
  TextEditingController decorationController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    decorationController.dispose();
    priceController.dispose();
    sizeController.dispose();
    colorController.dispose();
  }

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
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.pink,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: kDefaultPadding),
              const Text(
                'Add product',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  label: Text('Title'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              TextField(
                  controller: decorationController,
                  decoration: const InputDecoration(
                    label: Text('Deceration'),
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: kDefaultPadding),
              TextField(
                  controller: priceController,
                  decoration: const InputDecoration(
                    label: Text('Price'),
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: kDefaultPadding),
              TextField(
                  controller: sizeController,
                  decoration: const InputDecoration(
                    label: Text('Size'),
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: kDefaultPadding),
              TextField(
                  controller: colorController,
                  decoration: const InputDecoration(
                    label: Text('Color'),
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: kDefaultPadding),
              ElevatedButton(
                  onPressed: () {}, child: Text('Add product'.toUpperCase()))
            ],
          ),
        ),
      ),
    );
  }
}
