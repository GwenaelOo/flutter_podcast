import 'package:flutter/material.dart';
import '../components/playerView/HeroWidget.dart';
import '../components/playerView/TimeWidget.dart';
import '../components/playerView/AuthorWidget.dart';
import '../components/playerView/PlayerWidget.dart';
import '_PlayerViewBrain.dart';

class PlayerView extends StatefulWidget {
  PlayerView({Key key, this.title}) : super(key: key);

  final PlayerViewBrain playerViewBrain = new PlayerViewBrain();

  final String title;
  final String props = "Success";

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  updatePlayingStatus() {
    setState(() {
      widget.playerViewBrain.setTrackPlaying();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            PlayerHero(
              trackThumbail: widget.playerViewBrain.getTrackThumbnail(),
              trackTitle: widget.playerViewBrain.getTrackTitle(),
            ),
            AuthorWidget(
              text: widget.props,
            ),
            TimeWidget(),
            PlayerWidget(
              isTrackPlaying: widget.playerViewBrain.getIsTrackPlaying(),
              updatePlayingStatus: this.updatePlayingStatus,
            )
          ],
        ));
  }
}
