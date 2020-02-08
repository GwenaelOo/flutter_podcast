import "package:flutter/material.dart";
import "package:podcast_app/components/homeView/DiscoverWidget.dart";
import "package:podcast_app/components/homeView/DiscoverCarrouselWidget.dart";
import "package:podcast_app/components/homeView/Subscription.dart";

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Discover(),
            DiscoverCarrouselWidget(),
            Subscription(),
            Expanded(flex: 3, child: Container())
          ],
        ));
  }
}
