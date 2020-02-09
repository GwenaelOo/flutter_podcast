import "package:flutter/material.dart";

class PlayerWidget extends StatefulWidget {
  PlayerWidget(
      {Key key,
      this.isTrackPlaying,
      this.updatePlayingStatus,
      this.sessionPlayer})
      : super(key: key);

  final bool isTrackPlaying;
  final Function updatePlayingStatus;
  final sessionPlayer;

  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  String trackUrl =
      "https://rf.proxycast.org/532ff56f-b6b0-421a-ac11-2b3c9b73d175/20623-08.02.2020-ITEMA_22277084-1.mp3";

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
          width: double.infinity,
          child: Center(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        widget.isTrackPlaying
                            ? widget.sessionPlayer.pauseTrack()
                            : widget.sessionPlayer.playTrack(trackUrl);
                        widget.updatePlayingStatus();
                      },
                      child: Container(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            color: Colors.green,
                          ),
                          height: 100,
                          width: 100,
                          child: Icon(
                            widget.isTrackPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    child: Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
