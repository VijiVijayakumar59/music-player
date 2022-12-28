import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:music_playerr/presentation/screen/now_playing.dart';

class SongTile extends StatelessWidget {
  final String pictures;
  final String songname;
  final String artists;

  const SongTile({
    super.key,
    required this.pictures,
    required this.songname,
    required this.artists,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.17,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(pictures), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songname,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artists,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.001,
          ),
          IconButton(
            icon: const Icon(Icons.play_circle_filled),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const NowPlayingPage(),
              ),
            ),
            color: Colors.orange,
          ),
          SpeedDial(
            animatedIcon: AnimatedIcons.ellipsis_search,
            backgroundColor: Colors.white,
            foregroundColor: Colors.orange,
            activeForegroundColor: Colors.white,
            elevation: 0.0,
            buttonSize: const Size(35, 35),
            direction: SpeedDialDirection.down,
            children: [
              SpeedDialChild(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
              ),
              SpeedDialChild(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.playlist_add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
