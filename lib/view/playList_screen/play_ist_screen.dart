import 'package:flutter/material.dart';
import 'package:music_app_using_getx/model/playList_model/playList_model.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';
import 'package:music_app_using_getx/view/playList_screen/widgets/TopImage_container/image_container.dart';
import 'package:music_app_using_getx/view/playList_screen/widgets/play_or_shuffle/play_or_shuffle.dart';

class PlayListScreen extends StatelessWidget {
  PlayListScreen({super.key});

  PlayList playList = PlayList.playlist[0];

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
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "PlayList",
            style: TextStyle(fontSize: 24),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ImageContainer(playList: playList),
                SizedBox(
                  height: 40,
                ),
                PlarOrShuffleSwith(),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: playList.songs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${index + 1}"),
                      title: Text(playList.songs[index].title),
                      subtitle: Text(playList.songs[index].title),
                      trailing: Icon(Icons.more_vert_sharp),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
