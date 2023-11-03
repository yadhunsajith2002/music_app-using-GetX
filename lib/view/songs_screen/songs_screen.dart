import 'package:flutter/material.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';
import 'package:music_app_using_getx/view/songs_screen/widgets/backgorund_fliter/backgrnd_filter.dart';

class SongsScreen extends StatelessWidget {
  SongsScreen({super.key});

  final Song songs = Song.songs[2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            songs.coverUrl,
            fit: BoxFit.cover,
          ),
          BackGroundFilter()
        ],
      ),
    );
  }
}
