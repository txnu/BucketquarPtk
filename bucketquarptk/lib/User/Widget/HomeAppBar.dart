import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.black,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "BucketquarPtk",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Badge(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart_checkout,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
