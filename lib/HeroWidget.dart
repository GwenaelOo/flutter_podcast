import "package:flutter/material.dart";
import "api.dart";

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

class PlayerHero extends StatefulWidget {
  @override
  _PlayerHeroState createState() => _PlayerHeroState();
}

class _PlayerHeroState extends State<PlayerHero> {
  Color heroColor = Colors.green;
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
              child: Image.network(
                  "https://www.cervelledoiseau.fr/wp-content/uploads/2018/11/RF_OMM_0000019837_ITE.jpg"),
            ),
          ),
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
                      remote.getTitle(),
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
