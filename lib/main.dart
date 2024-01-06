import 'package:flutter/material.dart';
import 'package:wallpaper_ui/first_page.dart';
import 'package:wallpaper_ui/second_page.dart';
import 'package:wallpaper_ui/third_page.dart';
import 'package:wallpaper_ui/wallpaper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage()
    );
  }
}
