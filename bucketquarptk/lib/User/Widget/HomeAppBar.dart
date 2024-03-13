import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
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
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
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
          SizedBox(
            width: 12,
          ),
          Badge(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.chat_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
