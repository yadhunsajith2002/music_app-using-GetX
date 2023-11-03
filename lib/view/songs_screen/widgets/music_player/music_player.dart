import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

import 'package:music_app_using_getx/view/songs_screen/widgets/PlayerButtonWidget/player_widget.dart';
import 'package:music_app_using_getx/view/songs_screen/widgets/seekbar/seekbar_data.dart';

class MusicPlayerWidget extends StatelessWidget {
  MusicPlayerWidget({
    super.key,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
    required this.song,
  }) : _seekBarDataStream = seekBarDataStream;

  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.title,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            song.descrption,
            style: TextStyle(fontSize: 22, color: Colors.grey),
          ),
          SizedBox(
            height: 15,
          ),
          StreamBuilder<SeekBarData>(
            stream: _seekBarDataStream,
            builder: (context, snapshot) {
              final positiondata = snapshot.data;
              return SeekBar(
                position: positiondata?.position ?? Duration.zero,
                duration: positiondata?.duration ?? Duration.zero,
                onChangeEnd: audioPlayer.seek,
              );
            },
          ),
          PlayerButtonWidget(audioPlayer: audioPlayer),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.settings,
                  color: kwhite,
                  size: 30,
                ),
                Icon(
                  Icons.sync,
                  color: kwhite,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
