import 'package:flutter/material.dart';

const List categories = [
  {
    'image': 'assets/images/icon/home.png',
    'name': "Home",
  },
  {
    'image': 'assets/images/icon/apartment.png',
    'name': "Apartment",
  },
  {
    'image': 'assets/images/icon/bungalow.png',
    'name': "Villa",
  },
  {
    'image': 'assets/images/icon/online-shopping.png',
    'name': "Shop",
  },
];

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get size of screen
    return Container(
        height: size.height * 0.2,
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1 / 2.3),
            itemBuilder: (context, index) {
              return Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(categories[index]['image'])),
                  SizedBox(width: 10),
                  Text(categories[index]['name'],
                      style: TextStyle(fontSize: 18)),
                ],
              ));
            }));
  }
}
