import 'package:flutter/material.dart';
import '../components/playerView/HeroWidget.dart';
import '../components/playerView/TimeWidget.dart';
import '../components/playerView/AuthorWidget.dart';
import '../components/playerView/PlayerWidget.dart';

class PlayerView extends StatefulWidget {
  PlayerView({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the PlayerView object that was created by

          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            PlayerHero(),
            AuthorWidget(),
            TimeWidget(),
            PlayerWidget()
          ],
        ));
  }
}
