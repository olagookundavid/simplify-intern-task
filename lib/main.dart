import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/homepage/dashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pavilion Rewards',
      debugShowCheckedModeBanner: false,
      home: DashPage(),
    );
  }
}
