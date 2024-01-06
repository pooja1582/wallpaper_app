import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
class myhomePage extends StatelessWidget {
  const myhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
      mainAxisSpacing: 11,
        crossAxisSpacing: 11,
        children: [
          Container(
            height: 100,
            color: Colors.green,
          ),

      Container(
        height: 100,
        color: Colors.green,),

      Container(
        height: 100,
        color: Colors.green,),

      Container(
      height: 100,
      color: Colors.green,),

      Container(
        height: 100,
        color: Colors.green,),
        ],
      ),

    );
  }
}
