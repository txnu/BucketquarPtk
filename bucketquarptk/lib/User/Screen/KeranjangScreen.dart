import 'package:bucketquarptk/User/Widget/KeranjangAppBar.dart';
import 'package:bucketquarptk/User/Widget/KeranjangBottomBar.dart';
import 'package:bucketquarptk/User/Widget/KeranjangItemsWidget.dart';
import 'package:flutter/material.dart';

class KeranjangScreen extends StatelessWidget {
  const KeranjangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          KeranjangAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                KeranjangItemWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(150), child: KeranjangBottomBar()),
    );
  }
}
