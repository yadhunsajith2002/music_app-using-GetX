import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_app_using_getx/model/playList_model/playList_model.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    required this.playList,
  });

  final PlayList playList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/playlist', arguments: playList);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kprimaryclr.withOpacity(0.4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                playList.imageurl,
                height: 50,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playList.title,
                    style: TextStyle(
                        fontSize: 18,
                        color: kwhite,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${playList.songs.length} songs",
                    style: TextStyle(
                        fontSize: 18,
                        color: kgrey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_fill,
                color: kwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
