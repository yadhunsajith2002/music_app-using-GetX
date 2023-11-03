import 'package:flutter/material.dart';
import 'package:music_app_using_getx/model/playList_model/playList_model.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';

import 'package:music_app_using_getx/utlis/color_const.dart';

import 'package:music_app_using_getx/view/home_Screen/widgets/bottom_nav/custom_bottomnav.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/custom_appvar/custom_appbar.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/discover_music/discover_music.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/playListcard/play_listCard.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/section_header/section_header.dart';

import 'package:music_app_using_getx/view/home_Screen/widgets/trending_music/trending_music_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Song> songs = Song.songs;

  List<PlayList> playList = PlayList.playlist;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            kprimaryclr,
            ksecondaryclr,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(),
        bottomNavigationBar: CustomBottamNav(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DiscoverMusic(),
              TrendingMusic(songs: songs),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SectionHeader(headerName: "Playlists"),
                    SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: playList.length,
                      itemBuilder: (context, index) {
                        return PlayListCard(playList: playList[index]);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
