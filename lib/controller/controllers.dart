import 'package:flutter/material.dart';

void setWallpaper(ctx, path) {
  showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
            title: const Text("Set Wallpaper"),
            actions: [
              TextButton(
                  onPressed: () async {
                  /// Function for setting wallpaper

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
