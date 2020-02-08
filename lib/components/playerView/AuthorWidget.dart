import "package:flutter/material.dart";

class AuthorWidget extends StatelessWidget {
  AuthorWidget(
      {Key key,
      this.text,
      this.authorThumbnail,
      this.getIsTrackPlaying,
      this.authorName})
      : super(key: key);

  final text;
  final getIsTrackPlaying;
  final authorThumbnail;
  final authorName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(authorThumbnail),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text("par " + authorName))
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.info,
              ),
            )
          ],
        ),
      ),
    );
  }
}
