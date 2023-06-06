import 'package:flutter/material.dart';

class ShopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Shop Content',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Welcome to our shop! We offer a wide range of products to cater to your needs. Whether you are looking for clothing, accessories, or home decor, we have something for everyone. Our team of experts carefully selects each item to ensure the highest quality and customer satisfaction. Shop with us and discover the latest trends and styles. We provide a seamless shopping experience with secure payment options and fast shipping. Visit our shop today and start exploring!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}
