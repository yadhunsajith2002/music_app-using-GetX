import 'package:flutter/material.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class BackGroundFilter extends StatelessWidget {
  const BackGroundFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstOut,
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.4, 0.6],
          colors: [
            kwhite,
            kwhite.withOpacity(0.5),
            kwhite.withOpacity(0.0),
          ],
        ).createShader(rect);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kprimaryclr, ksecondaryclr]),
        ),
      ),
    );
  }
}
