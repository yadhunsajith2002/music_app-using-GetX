import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';
import 'package:music_app_using_getx/view/home_Screen/home_screen.dart';
import 'package:music_app_using_getx/view/playList_screen/play_ist_screen.dart';
import 'package:music_app_using_getx/view/songs_screen/songs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: kwhite, displayColor: kwhite)),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/song', page: () => SongsScreen()),
        GetPage(name: '/playlist', page: () => PlayListScreen()),
      ],
    );
  }
}
