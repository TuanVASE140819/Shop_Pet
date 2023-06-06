import 'package:demo_ui/pages/shop/widget/list_shop.dart';
import 'package:demo_ui/pages/shop/Widget/shop_header.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [ShopHeader(), AllProduct(name: 'All Product')],
          ),
        ),
      ),
    );
  }
}
