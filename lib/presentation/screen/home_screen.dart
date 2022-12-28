import 'package:flutter/material.dart';
import 'package:music_playerr/models/images_list.dart';
import 'package:music_playerr/presentation/screen/favourites.dart';
import 'package:music_playerr/presentation/screen/now_playing.dart';
import 'package:music_playerr/presentation/screen/playlist.dart';
import 'package:music_playerr/presentation/screen/search.dart';
import 'package:music_playerr/presentation/screen/settings.dart';
import 'package:music_playerr/presentation/screen/songs.dart';
import 'package:music_playerr/presentation/screen/suggested.dart';

import 'package:music_playerr/presentation/widget/settings_widget.dart';
import 'package:music_playerr/presentation/widget/song_tile_widget.dart';
import 'package:music_playerr/presentation/widget/songlist_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              // ignore: prefer_const_constructors

              const InkWell(
                child: SettingWidget(
                  settings: "Privacy Policy",
                  settingIcon: Icons.key,
                ),
              ),
              const SettingWidget(
                settings: "Terms and Conditions",
                settingIcon: Icons.receipt_long_outlined,
              ),
              const SettingWidget(
                settings: "Contact Us",
                settingIcon: Icons.contact_mail,
              ),
              const SettingWidget(
                settings: "Share App",
                settingIcon: Icons.share,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const SettingsView(),
                  ),
                ),
                child: const SettingWidget(
                  settings: "Settings",
                  settingIcon: Icons.settings,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Row(
            children: const [
              Icon(
                Icons.music_note,
                color: Colors.orange,
              ),
              Text(
                "TruBeat",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const SearchPage())));
              },
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 16),
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: "Suggested",
              ),
              Tab(
                text: "Songs",
              ),
              Tab(
                text: "Favourites",
              ),
              Tab(
                text: "Playlists",
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          SuggestedPage(),
          SongList(),
          FavouritePage(),
          PlaylistView()
        ]),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => const NowPlayingPage()),
              ),
            );
          },
          child: Container(
            height: 80,
            color: Color.fromARGB(255, 250, 195, 128),
            child: SongTile(
                pictures: image8, songname: songname4, artists: singer4),
          ),
        ),
      ),
    );
  }
}
