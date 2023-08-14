import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/neubox.dart';
import 'package:music_player/models/string_duration.dart';
import 'package:music_player/pages/profile_screen.dart';
import 'package:music_player/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  bool _play = false;
  String _currentPosition = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              // Profile tiles
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: const Icon(Icons.arrow_back)),
                    ),
                    const Text(
                      'The Colour In Anything',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(
                                  context, ProfileScreen.routeName);
                            });
                          },
                          icon: const Icon(Icons.info),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 20,
              ),
              // Album picture
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/5/5d/The_colour_in_anything_blake.jpg'),
                    ),

                    // song name
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'James Blake',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '1. R a d i o  S i l e n c e ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0:00'),
                  Icon(Icons.repeat),
                  Icon(Icons.shuffle),
                  Text('4:00')
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              NeuBox(
                child: const LinearProgressIndicator(
                  color: Colors.green,
                  backgroundColor: Colors.grey,
                  value: .25,
                  minHeight: 15,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // skip backward, play button, skip forward
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: NeuBox(
                        child: IconButton(
                          iconSize: 32,
                          icon: const Icon(Icons.skip_previous),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AudioWidget.assets(
                          path: 'lib/song1.mp3',
                          play: _play,
                          onReadyToPlay: (total) {
                            setState(() {
                              _currentPosition =
                                  '${Duration().mmSSFormat} / ${total.mmSSFormat}';
                            });
                          },
                          onPositionChanged: (current, total) {
                            setState(() {
                              _currentPosition =
                                  '${Duration().mmSSFormat} / ${total.mmSSFormat}';
                            });
                          },
                          child: NeuBox(
                            child: IconButton(
                              icon: _play
                                  ? const Icon(Icons.pause)
                                  : const Icon(Icons.play_arrow),
                              onPressed: () {
                                setState(() {
                                  _play = !_play;
                                });
                              },
                              iconSize: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                        child: IconButton(
                          iconSize: 32,
                          icon: const Icon(Icons.skip_next),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
