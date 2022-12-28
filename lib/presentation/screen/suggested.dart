import 'package:flutter/material.dart';
import 'package:music_playerr/models/images_list.dart';

import 'package:music_playerr/presentation/widget/home.dart';

class SuggestedPage extends StatelessWidget {
  const SuggestedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: ListView(
        children: [
          RecentPage(
            name: 'recent',
            title: "Recently Played",
            borderradius: 15,
            photos: [
              image1,
              image5,
              image3,
              image4,
              image2,
              image8,
              image7,
              image6
            ],
            texttitle1: [
              title1,
              title2,
              title3,
              title4,
              title5,
              title6,
              title7,
              title8
            ],
            texttitle2: [
              subtitle1,
              subtitle2,
              subtitle3,
              subtitle4,
              subtitle5,
              subtitle6,
              subtitle7,
              subtitle8
            ],
          ),
          Artist(
            name: 'art',
            title: "Artists",
            borderradius: 100,
            artistname: const [
              'Selena Gomez',
              'JungKook',
              'Taylor Swift',
            ],
            photos: [img1, img2, img3],
          ),
          RecentPage(
            name: 'most',
            title: "Most Played",
            borderradius: 15,
            photos: [
              image8,
              image6,
              image5,
              image7,
              image2,
              image3,
              image4,
              image1
            ],
            texttitle1: [
              title1,
              title2,
              title3,
              title4,
              title5,
              title6,
              title7,
              title8
            ],
            texttitle2: [
              subtitle1,
              subtitle2,
              subtitle3,
              subtitle4,
              subtitle5,
              subtitle6,
              subtitle7,
              subtitle8
            ],
          ),
        ],
      ),
    );
  }
}
