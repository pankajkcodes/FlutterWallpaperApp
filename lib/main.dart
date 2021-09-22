import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final wallpapers = [
    'images/wallpaper1.jpg',
    'images/wallpaper2.jpg',
    'images/wallpaper3.jpg',
    'images/wallpaper4.jpg',
    'images/wallpaper5.jpg',
    'images/wallpaper6.jpg',
    'images/wallpaper7.jpg',
  ];

  MyApp({Key? key}) : super(key: key);

  void setWallpaper(ctx, path) {
    showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
              title: const Text("Set Wallpaper"),
              actions: [
                TextButton(
                    onPressed: () async {
                      int location = WallpaperManager
                          .HOME_SCREEN; // or location = WallpaperManager.LOCK_SCREEN;
                      await WallpaperManager.setWallpaperFromAsset(
                          path, location);

                      Navigator.of(ctx).pop();
                    },
                    child: const Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text("No")),
              ],
            ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Wallpapers App"),
        ),
        body: Swiper(
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                setWallpaper(context, (wallpapers[index]));
              },
              child: Ink.image(
                  image: AssetImage(wallpapers[index]),
                  width: MediaQuery.of(context).size.width - 40,
                  fit: BoxFit.cover),
            ),
          ),
          itemCount: wallpapers.length,
      
          control: const SwiperControl(),
         
  layout: SwiperLayout.STACK,
        ),
      ),
    );
  }
}
