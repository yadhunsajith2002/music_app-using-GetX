import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.songs,
  });

  final Song songs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: songs);
      },
      child: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.50,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(songs.coverUrl))),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.45,
              margin: EdgeInsets.only(bottom: 15, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kwhite.withOpacity(0.6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          songs.title,
                          style: TextStyle(
                              color: kprimaryclr,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          songs.descrption,
                          style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_outline_rounded,
                          color: kprimaryclr,
                          size: 35,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
