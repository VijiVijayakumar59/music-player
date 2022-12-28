import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:music_playerr/presentation/widget/song_tile_widget.dart';

class FavWidget extends StatelessWidget {
  const FavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 0),
            height: MediaQuery.of(context).size.height * 0.7,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.37,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage(songImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          songNames[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(
                        //     Icons.more_vert,
                        //   ),
                        // )
                        SpeedDial(
                          animatedIcon: AnimatedIcons.ellipsis_search,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          activeForegroundColor: Colors.white,
                          elevation: 0.0,
                          buttonSize: const Size(35, 35),
                          direction: SpeedDialDirection.down,
                          children: [
                            SpeedDialChild(
                              child: IconButton(
                                visualDensity: VisualDensity(),
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_outline),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
