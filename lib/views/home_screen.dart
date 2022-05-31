import 'package:flutter/material.dart';
import '../model/model.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 0.5,
          maxCrossAxisExtent: 250),
      itemCount: wallpapers.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FullScreen(wallpaperPath: wallpapers[index],);
          }));
        },
        child: GridTile(
          child: Ink.image(
              image: AssetImage(wallpapers[index]),
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          footer: GridTileBar(
            title: Text("Wallpaper  ${index + 1}"),
            backgroundColor: Colors.black38,
          ),
        ),
      ),
    );
  }
}
