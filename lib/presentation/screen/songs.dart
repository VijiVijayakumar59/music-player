import 'package:flutter/material.dart';

import 'package:music_playerr/presentation/widget/song_tile_widget.dart';
import 'package:music_playerr/presentation/widget/songlist_widget.dart';
import 'package:music_playerr/presentation/widget/text_widget.dart';

class SongList extends StatelessWidget {
  const SongList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const TextWidget(
                commontext: "100 songs",
                selectcolor: Colors.black,
                textSize: 18,
                textweight: FontWeight.bold),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return SongTile(
                        pictures: songImages[index],
                        songname: songNames[index],
                        artists: singers[index]);
                  },
                  itemCount: songImages.length),
            ),
          ],
        ),
      ),
    );
  }
}
