import "package:flutter/material.dart";
import 'package:podcast_app/components/audioPlayer/SessionPlayer.dart';
import "package:podcast_app/components/homeView/DiscoverWidget.dart";
import "package:podcast_app/components/homeView/DiscoverCarrouselWidget.dart";
import "package:podcast_app/components/homeView/Subscription.dart";
import '../playerView/playerView.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title, this.omg}) : super(key: key);
  final String title;
  final String omg;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  handleNav(data) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PlayerView(
                title: "kikoo",
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Discover(),
            DiscoverCarrouselWidget(handleNav: (data) => handleNav(data)),
            Subscription(),
            Expanded(flex: 3, child: Container())
          ],
        ));
  }
}
