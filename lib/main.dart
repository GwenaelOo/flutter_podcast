import 'package:flutter/material.dart';
import 'views/playerView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: PlayerView(title: 'AMELIE\'S PODCAST APP'),
    );
  }
}
