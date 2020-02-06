import "package:flutter/material.dart";

class PlayerWidget extends StatefulWidget {
  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
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
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Colors.green,
                    ),
                    height: 100,
                    width: 100,
                    child: Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 50,
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
