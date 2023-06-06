import 'package:flutter/material.dart';

const List product = [
  {
    'image': 'assets/images/category/shop1.jpg',
    'name': "Cute Shop",
  },
  {
    'image': 'assets/images/category/dv2.png',
    'name': "Qàng Thương",
  },
  {
    'image': 'assets/images/category/dv3.png',
    'name': "Take a shower",
  },
  {
    'image': 'assets/images/category/dv4.png',
    'name': "Cut nails",
  },
];

class HomeProduct extends StatelessWidget {
  final String name;
  const HomeProduct({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get size of screen
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: size.height * 0.32,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    )),
                Text('See All',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow,
                    )),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 1.2,
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              color: Colors.grey.shade300,
                            )
                          ],
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          product[index % product.length]
                                              ['image'])),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        product[index % product.length]['name'],
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$ 20'),
                                        Row(
                                          children: [
                                            Icon(Icons.star),
                                            Text('4.5'),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        )),
                  );
                },
              ),
            )
          ],
        ));
  }
}
