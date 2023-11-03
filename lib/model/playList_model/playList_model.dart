import 'package:music_app_using_getx/model/song_model/song_model.dart';

class PlayList {
  final String title;
  final List<Song> songs;

  final String imageurl;

  PlayList({
    required this.title,
    required this.songs,
    required this.imageurl,
  });

  static List<PlayList> playlist = [
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/ao20kkkmte9b1.jpg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/images (1).jpeg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/maxresdefault.jpg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl:
            "assets/images/music-genre-suited-for-yoga-and-meditation.jpg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/oar2.jpg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/unnamed.jpg"),
    PlayList(
        title: "Hip Hop mix",
        songs: Song.songs,
        imageurl: "assets/images/ao20kkkmte9b1.jpg"),
  ];
}
