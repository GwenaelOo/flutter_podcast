import 'package:flutter/material.dart';
import 'views/playerView/playerView.dart';
import 'views/homeView/HomeView.dart';
import 'components/audioPlayer/SessionPlayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF12153B),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.black),
        secondaryHeaderColor: Colors.black,
      ),
      home: HomeView(title: "hop"),
    );
  }
}
