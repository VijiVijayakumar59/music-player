import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_playerr/presentation/widget/text_widget.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
                commontext: " 2 Playlist",
                selectcolor: Colors.black,
                textSize: 20,
                textweight: FontWeight.bold),
            SizedBox(height: MediaQuery.of(context).size.height * 0.009),
            const ListTile(
              leading: Icon(
                Icons.playlist_add_circle_outlined,
                size: 40,
                color: Colors.orange,
              ),
              title: TextWidget(
                  commontext: "Add New Playlist",
                  selectcolor: Colors.black,
                  textSize: 18,
                  textweight: FontWeight.w500),
            ),
            const ListTile(
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: NetworkImage(
                      "https://ik.imagekit.io/gdgtme/wp-content/uploads/2022/02/How-To-Create-A-Music-Playlist-For-Offline-Listening-In-2022.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              title: TextWidget(
                  commontext: "Melodies",
                  selectcolor: Colors.black,
                  textSize: 18,
                  textweight: FontWeight.bold),
              subtitle: TextWidget(
                  commontext: "5 Songs",
                  selectcolor: Colors.grey,
                  textSize: 16,
                  textweight: FontWeight.normal),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
            const ListTile(
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: NetworkImage(
                      "https://www.switchingtomac.com/wp-content/uploads/2021/11/apple-music.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              title: TextWidget(
                  commontext: "Legends",
                  selectcolor: Colors.black,
                  textSize: 18,
                  textweight: FontWeight.bold),
              subtitle: TextWidget(
                  commontext: "6 Songs",
                  selectcolor: Colors.grey,
                  textSize: 16,
                  textweight: FontWeight.normal),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
        ),
      )),
    );
  }
}
