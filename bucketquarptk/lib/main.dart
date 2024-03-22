import 'package:bucketquarptk/User/Screen/ChatScreen.dart';
import 'package:bucketquarptk/User/Screen/KeranjangScreen.dart';
import 'package:flutter/material.dart';

import 'User/DashboardUser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bucketquar Pontianak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/",
      routes: {
        "/": (context) => DashboardUser(),
        "keranjang": (context) => KeranjangScreen(),
        "chat": (context) => ChatScreen(),
      },
    );
  }
}
