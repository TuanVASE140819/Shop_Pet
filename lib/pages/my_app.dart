import 'package:demo_ui/pages/home/home_page.dart';
import 'package:demo_ui/pages/login/login_page.dart';
import 'package:demo_ui/pages/shop/shop_page.dart';
import 'package:demo_ui/pages/detail/detail_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demo UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DetailPage());
  }
}
