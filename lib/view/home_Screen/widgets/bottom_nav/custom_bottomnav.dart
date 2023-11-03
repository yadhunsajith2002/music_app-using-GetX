import 'package:flutter/material.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class CustomBottamNav extends StatelessWidget {
  const CustomBottamNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BottomNavigationBar(
        backgroundColor: kprimaryclr.withOpacity(0.5),
        unselectedItemColor: kwhite,
        selectedItemColor: kwhite,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline), label: "Home"),
        ],
      ),
    );
  }
}
