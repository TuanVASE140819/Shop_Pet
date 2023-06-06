import 'package:flutter/material.dart';

const List categories = [
  {
    'image': 'assets/images/icon/home.png',
    'name': "Shower",
  },
  {
    'image': 'assets/images/icon/online-shopping.png',
    'name': "Massage",
  },
  {
    'image': 'assets/images/icon/bungalow.png',
    'name': "clipping",
  },
  {
    'image': 'assets/images/icon/apartment.png',
    'name': "Cut",
  },
];

class DetailCategory extends StatefulWidget {
  const DetailCategory({Key? key}) : super(key: key);

  @override
  State<DetailCategory> createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get size of screen
    return Container(
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: size.width * 0.25,
                  margin: EdgeInsets.only(right: 15.0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(categories[index]['image']),
                        ),
                        SizedBox(height: 10),
                        Text(
                          categories[index]['name'],
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
