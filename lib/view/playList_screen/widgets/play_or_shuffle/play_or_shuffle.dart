// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class PlarOrShuffleSwith extends StatefulWidget {
  PlarOrShuffleSwith({
    super.key,
  });

  @override
  State<PlarOrShuffleSwith> createState() => _PlarOrShuffleSwithState();
}

class _PlarOrShuffleSwithState extends State<PlarOrShuffleSwith> {
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: kwhite),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: isPlay ? 0 : MediaQuery.of(context).size.width * 0.45,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kprimaryclr),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Play",
                          style: TextStyle(
                              fontSize: 18,
                              color: isPlay ? kwhite : kprimaryclr),
                        ),
                      ),
                      Icon(
                        Icons.play_circle,
                        color: isPlay ? kwhite : kprimaryclr,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Shuffle",
                          style: TextStyle(
                              fontSize: 18,
                              color: isPlay ? kprimaryclr : kwhite),
                        ),
                      ),
                      Icon(
                        Icons.shuffle,
                        color: isPlay ? kprimaryclr : kwhite,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
