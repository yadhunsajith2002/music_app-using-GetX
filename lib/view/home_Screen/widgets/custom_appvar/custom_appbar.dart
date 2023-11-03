import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://instructor-academy.onlinecoursehost.com/content/images/2023/05/58_Top-10-Successful-Graphic-Design-Course-Creators.jpg"),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
