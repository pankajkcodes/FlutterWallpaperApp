import 'package:flutter/material.dart';

import '../controller/controllers.dart';

class FullScreen extends StatefulWidget {
  final String wallpaperPath;

  const FullScreen({Key? key, required this.wallpaperPath}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(widget.wallpaperPath),
            ElevatedButton(
                onPressed: () {
                  setWallpaper(context, "");
                },
                child: const Text("Set Wallpaper"))
          ],
        ),
      ),
    ));
  }
}
