import 'package:flutter/material.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({
    super.key,
    required this.headerName,
    this.action = "View More",
  });

  final String headerName;

  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerName,
          style: TextStyle(
              fontSize: 18, color: kwhite, fontWeight: FontWeight.w600),
        ),
        Text(
          action,
          style: TextStyle(
              fontSize: 18, color: kwhite, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
