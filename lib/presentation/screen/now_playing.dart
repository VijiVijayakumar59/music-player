import 'package:flutter/material.dart';

class NowPlayingPage extends StatelessWidget {
  const NowPlayingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        Center(
          child: Container(
            height: 380,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://resize.indiatvnews.com/en/resize/newbucket/1080_-/2022/11/jungkook-dreamers-fifa-wallpaper-1669002330.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Text(
          "Dreamers",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Text(
          "JungKook(BTS)..Fifa World Cup",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        Slider(
          min: 0,
          max: 100,
          value: 53,
          activeColor: Colors.orange,
          inactiveColor: Colors.grey.shade300,
          onChanged: (value) {},
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("02:05"), Text("04:00")],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.skip_previous_rounded,
                size: 50,
              ),
              Icon(
                Icons.replay_10,
                size: 25,
              ),
              Icon(
                Icons.play_circle_fill,
                color: Colors.orange,
                size: 50,
              ),
              Icon(
                Icons.forward_10,
                size: 25,
              ),
              Icon(
                Icons.skip_next,
                size: 50,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
