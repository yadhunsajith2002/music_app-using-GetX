import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';

import 'package:music_app_using_getx/view/songs_screen/widgets/backgorund_fliter/backgrnd_filter.dart';
import 'package:music_app_using_getx/view/songs_screen/widgets/music_player/music_player.dart';
import 'package:music_app_using_getx/view/songs_screen/widgets/seekbar/seekbar_data.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

class SongsScreen extends StatefulWidget {
  SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  Song song = Get.arguments ?? Song.songs[1];

  @override
  void initState() {
    super.initState();
    audioPlayer.setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(
        Uri.parse('asset:///${song.url}'),
      ),
      // AudioSource.uri(
      //   Uri.parse('asset:///${Song.songs[2].url}'),
      // ),
    ]));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream => rxdart.Rx.combineLatest2(
      audioPlayer.positionStream,
      audioPlayer.durationStream,
      (Duration position, Duration? duration) =>
          SeekBarData(position, duration ?? Duration.zero));

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
            song.coverUrl,
            fit: BoxFit.cover,
          ),
          BackGroundFilter(),
          MusicPlayerWidget(
              song: song,
              seekBarDataStream: _seekBarDataStream,
              audioPlayer: audioPlayer)
        ],
      ),
    );
  }
}
