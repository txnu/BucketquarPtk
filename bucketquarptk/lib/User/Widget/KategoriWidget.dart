import 'package:flutter/material.dart';

class KategoriWidget extends StatelessWidget {
  const KategoriWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            InkWell(
              focusColor: Colors.white,
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/buketwisuda1-removebg-preview-2-7Gp.png",
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      "Bucket Bunga",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
