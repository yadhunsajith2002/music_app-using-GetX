class Song {
  final String title;
  final String descrption;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.descrption,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: "Pray",
      descrption: "Pray for a while",
      url: "assets/musics/song1.mp3",
      coverUrl: "assets/images/maxresdefault.jpg",
    ),
    Song(
      title: "Motivational",
      descrption: "Spend a time",
      url: "assets/musics/song2.mp3",
      coverUrl: "assets/images/ao20kkkmte9b1.jpg",
    ),
    Song(
      title: "Yoga time",
      descrption: "Its Yoga time",
      url: "assets/musics/song3.mp3",
      coverUrl: "assets/images/unnamed.jpg",
    ),
  ];
}
