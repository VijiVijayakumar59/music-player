import 'package:flutter/material.dart';

import 'package:music_playerr/presentation/widget/song_tile_widget.dart';
import 'package:music_playerr/presentation/widget/songlist_widget.dart';

class RecentPageView extends StatelessWidget {
  const RecentPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Recently Played",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: songNames.length,
          itemBuilder: (context, index) {
            return SongTile(
                pictures: songImages[index],
                songname: songNames[index],
                artists: singers[index]);
          },
        ),
      ),
    );
  }
}
