import 'package:flutter/material.dart';
import 'package:wallpaperapp/views/home_screen.dart';
import 'model/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Wallpapers App"),
        ),
        body:
        const HomeScreen(),
      ),
    );
  }
}

