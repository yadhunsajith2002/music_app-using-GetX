import 'package:flutter/material.dart';
import 'package:music_app_using_getx/model/song_model/song_model.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/section_header/section_header.dart';
import 'package:music_app_using_getx/view/home_Screen/widgets/songcard/song_card.dart';

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SectionHeader(
              headerName: 'Trending Music',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return SongCard(songs: songs[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
