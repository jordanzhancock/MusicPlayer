import 'package:flutter/material.dart';
import 'package:music_player/pages/main_page.dart';
import 'package:music_player/pages/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}
