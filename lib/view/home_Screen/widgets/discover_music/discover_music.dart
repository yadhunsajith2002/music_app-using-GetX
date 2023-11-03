import 'package:flutter/material.dart';
import 'package:music_app_using_getx/utlis/color_const.dart';

class DiscoverMusic extends StatelessWidget {
  const DiscoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome", style: TextStyle(fontSize: 24, color: Colors.grey)),
          SizedBox(
            height: 5,
          ),
          Text("Listen Your Inspiration Song",
              style: TextStyle(fontSize: 24, color: Colors.white)),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(Icons.search),
                hintText: "Search for your music",
                fillColor: kwhite,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          )
        ],
      ),
    );
  }
}
