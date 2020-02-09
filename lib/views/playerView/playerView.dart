import 'package:flutter/material.dart';
import '../../components/playerView/HeroWidget.dart';
import '../../components/playerView/TimeWidget.dart';
import '../../components/playerView/AuthorWidget.dart';
import '../../components/playerView/PlayerWidget.dart';
import '_PlayerViewBrain.dart';
import 'package:podcast_app/components/audioPlayer/SessionPlayer.dart';

class PlayerView extends StatefulWidget {
  PlayerView({Key key, this.title}) : super(key: key);

  final PlayerViewBrain playerViewBrain = new PlayerViewBrain();
  final SessionAudioPlayer sessionAudioPlayer = new SessionAudioPlayer();

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
    print('initail playing status');
    print(widget.playerViewBrain.isTrackPlaying);
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
              authorThumbnail: widget.playerViewBrain.getAuthorThumbnail(),
              authorName: widget.playerViewBrain.getAuthorName(),
            ),
            TimeWidget(),
            PlayerWidget(
              isTrackPlaying: widget.playerViewBrain.getIsTrackPlaying(),
              updatePlayingStatus: this.updatePlayingStatus,
              sessionPlayer: widget.sessionAudioPlayer,
            )
          ],
        ));
  }
}
