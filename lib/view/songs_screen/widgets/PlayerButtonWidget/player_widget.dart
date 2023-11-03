import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class PlayerButtonWidget extends StatelessWidget {
  const PlayerButtonWidget({
    super.key,
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<SequenceState?>(
          stream: audioPlayer.sequenceStateStream,
          builder: (context, index) {
            return IconButton(
              onPressed:
                  audioPlayer.hasPrevious ? audioPlayer.seekToPrevious : null,
              iconSize: 45,
              icon: const Icon(
                Icons.skip_previous,
                color: Colors.white,
              ),
            );
          },
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final playerstate = snapshot.data;
              final processingState = playerstate!.processingState;
              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  width: 64,
                  height: 64,
                  margin: EdgeInsets.all(10),
                  child: CircularProgressIndicator(),
                );
              } else if (!audioPlayer.playing) {
                return IconButton(
                  iconSize: 75,
                  onPressed: audioPlayer.play,
                  icon: Icon(
                    Icons.play_circle,
                    color: kwhite,
                  ),
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  iconSize: 75,
                  onPressed: audioPlayer.pause,
                  icon: Icon(
                    Icons.pause_circle,
                    color: kwhite,
                  ),
                );
              } else {
                return IconButton(
                  iconSize: 75,
                  onPressed: () => audioPlayer.seek(Duration.zero,
                      index: audioPlayer.effectiveIndices!.first),
                  icon: Icon(
                    Icons.replay_circle_filled_outlined,
                    color: kwhite,
                  ),
                );
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        StreamBuilder<SequenceState?>(
          stream: audioPlayer.sequenceStateStream,
          builder: (context, index) {
            return IconButton(
              onPressed: audioPlayer.hasNext ? audioPlayer.seekToNext : null,
              iconSize: 45,
              icon: const Icon(
                Icons.skip_next,
                color: Colors.white,
              ),
            );
          },
        ),
      ],
    );
  }
}
