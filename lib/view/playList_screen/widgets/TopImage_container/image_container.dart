import 'package:flutter/material.dart';
import 'package:music_app_using_getx/model/playList_model/playList_model.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.playList,
  });

  final PlayList playList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            playList.imageurl,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.7,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          playList.title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
