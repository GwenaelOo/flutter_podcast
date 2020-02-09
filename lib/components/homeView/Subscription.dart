import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

var data = [
  {'id': 'kikoo'}
];

class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mes abonnements',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Container()],
          )
        ],
      ),
    );
  }
}

class CarrouselItem extends StatelessWidget {
  CarrouselItem({
    Key key,
    this.data,
  }) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
