import 'package:flutter/material.dart';

import 'package:music_playerr/presentation/screen/most_played.dart';
import 'package:music_playerr/presentation/screen/recent_page.dart';

class RecentPage extends StatelessWidget {
  final String title;
  final double borderradius;
  final String name;

  final List<String> photos;
  final List<String>? texttitle1;
  final List<String>? texttitle2;

  const RecentPage({
    super.key,
    required this.title,
    required this.borderradius,
    required this.photos,
    this.texttitle1,
    this.texttitle2,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            trailing: TextButton(
              child: const Text(
                "see all",
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                if (name == 'recent') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const RecentPageView(),
                    ),
                  );
                } else if (name == 'most') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const MostlyPlayed(),
                    ),
                  );
                }
              },
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 200,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 15,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 136, 1, 1),
                      image: DecorationImage(
                        image: NetworkImage(photos[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderradius),
                      ),
                    ),
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    texttitle1![index],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(texttitle2![index]),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Artist extends StatelessWidget {
  final String title;
  final double borderradius;
  final String name;

  final List<String> photos;
  final List<String> artistname;

  const Artist({
    super.key,
    required this.title,
    required this.borderradius,
    required this.photos,
    required this.artistname,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 200,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 136, 1, 1),
                      image: DecorationImage(
                        image: NetworkImage(photos[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderradius),
                      ),
                    ),
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    artistname[index],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
