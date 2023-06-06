import 'package:flutter/material.dart';
import 'package:demo_ui/pages/home/Widget/home_header.dart';
import 'package:demo_ui/pages/home/Widget/home_category.dart';
import 'package:demo_ui/pages/home/Widget/home_product.dart';
import 'package:demo_ui/pages/home/Widget/home_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              HomeBanner(),
              // HomeCategory(),
              HomeProduct(name: 'Outstanding'),
              HomeProduct(name: 'Best Seller'),
            ],
          ),
        ),
      ),
    );
  }
}
