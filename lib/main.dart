import 'package:flutter/material.dart';
import 'package:podcast_app/AuthorWidget.dart';
import 'package:podcast_app/HeroWidget.dart';
import "package:podcast_app/PlayerWidget.dart";
import 'TimeWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF12153B),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.black),
        secondaryHeaderColor: Colors.black,
      ),
      home: MyHomePage(title: 'AMELIE\'S PODCAST APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by

          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            PlayerHero(),
            AuthorWidget(),
            TimeWidget(),
            PlayerWidget()
          ],
        ));
  }
}
