import "package:flutter/material.dart";
import 'package:podcast_app/api.dart';

HeroBrain brain = new HeroBrain();
RemoteData remote = new RemoteData();

class HeroBrain {
  Color heroColor = Colors.red;

  getHeroColor([propsColor]) {
    if (propsColor != null) {
      return propsColor;
    } else {
      return heroColor;
    }
  }
}

class PlayerHero extends StatelessWidget {
  PlayerHero({Key key, this.trackThumbail, this.trackTitle}) : super(key: key);

  final String trackThumbail;
  final String trackTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
              child: Container(
            width: double.infinity,
            child: Image.network(trackThumbail),
          )),
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.white.withOpacity(0),
              margin: EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Text(
                      trackTitle,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
