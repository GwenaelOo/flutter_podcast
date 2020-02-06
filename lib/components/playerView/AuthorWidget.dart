import "package:flutter/material.dart";

class AuthorWidget extends StatefulWidget {
  AuthorWidget({Key key, title}) : super(key: key);
  @override
  _AuthorWidgetState createState() => _AuthorWidgetState();
}

class _AuthorWidgetState extends State<AuthorWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Text("kikoo"),
      ),
    );
  }
}
