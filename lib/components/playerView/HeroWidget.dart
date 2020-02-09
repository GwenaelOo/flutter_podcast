import "package:flutter/material.dart";

HeroBrain brain = new HeroBrain();

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
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(1)
                          ],
                          tileMode: TileMode.repeated),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              color: Colors.red.withOpacity(0),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      trackTitle,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
