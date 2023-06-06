import 'package:flutter/material.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Let have a rest!', style: TextStyle(fontSize: 22)),
              RichText(
                  text: const TextSpan(
                      children: [
                    TextSpan(
                        text: 'Pet Care',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: ' service 🐶 ', style: TextStyle(fontSize: 22)),
                  ],
                      style: TextStyle(
                        color: Colors.black,
                      ))),
            ],
          ),
          // SizedBox(
          //     width: 40,
          //     height: 40,
          //     child: RawMaterialButton(
          //       onPressed: () {},
          //       fillColor: Colors.yellow,
          //       shape: const CircleBorder(),
          //       child: Icon(Icons.search, color: Colors.white, size: 30),
          //     ))
        ],
      ),
    );
  }
}
