import "package:flutter/material.dart";

class AuthorWidget extends StatelessWidget {
  AuthorWidget({Key key, this.text, this.getIsTrackPlaying}) : super(key: key);
  final text;
  final getIsTrackPlaying;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Text(text),
      ),
    );
  }
}
