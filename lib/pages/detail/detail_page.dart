import 'package:flutter/material.dart';
import 'package:demo_ui/pages/detail/Widget/detail_header.dart';
import 'package:demo_ui/pages/detail/Widget/detail_category.dart';
import 'package:demo_ui/pages/detail/Widget/detail_product.dart';
import 'package:demo_ui/pages/detail/Widget/detail_banner.dart';
import 'package:demo_ui/pages/detail/Widget/detail_content.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailHeader(),
              DetailBanner(),
              ShopContent(),
              DetailCategory(),
              DetailProduct(name: 'Review')
            ],
          ),
        ),
      ),
    );
  }
}
