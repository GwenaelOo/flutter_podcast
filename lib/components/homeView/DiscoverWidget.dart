import "package:flutter/material.dart";

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Text('Derniers PODCAST',
                              style: TextStyle(fontSize: 24))),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Selection des derniers podcasts',
                          style: TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(right: 10, top: 10, child: Icon(Icons.dehaze))
          ],
        ),
      ),
    );
  }
}
