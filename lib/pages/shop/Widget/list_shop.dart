import 'package:flutter/material.dart';

const List product = [
  {
    'image': 'assets/images/category/dv1.png',
    'name': "Pet hair cutting",
  },
  {
    'image': 'assets/images/category/dv2.png',
    'name': "General examination",
  },
  {
    'image': 'assets/images/category/dv3.png',
    'name': "Take a shower",
  },
  {
    'image': 'assets/images/category/dv4.png',
    'name': "Cut nails",
  },
  {
    'image': 'assets/images/category/dv1.png',
    'name': "Pet hair cutting",
  },
  {
    'image': 'assets/images/category/dv2.png',
    'name': "General examination",
  },
  {
    'image': 'assets/images/category/dv3.png',
    'name': "Take a shower",
  },
  {
    'image': 'assets/images/category/dv4.png',
    'name': "Cut nails",
  },
  {
    'image': 'assets/images/category/dv1.png',
    'name': "Pet hair cutting",
  },
  {
    'image': 'assets/images/category/dv2.png',
    'name': "General examination",
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

class AllProduct extends StatelessWidget {
  final String name;

  const AllProduct({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            childAspectRatio: 1.2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(product.length, (index) {
              return ShopItem(item: product[index]);
            }),
          ),
        ],
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const ShopItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 3,
            color: Colors.grey.shade300,
          ),
        ],
      ),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(item['image']),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ 20'),
                    Row(
                      children: [
                        Icon(Icons.star),
                        Text('4.5'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
