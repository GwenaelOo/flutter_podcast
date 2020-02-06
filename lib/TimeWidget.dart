import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class TimeWidget extends StatefulWidget {
  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('01:57'),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    overlayColor: Colors.deepPurple,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 15),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                    trackHeight: 6.0),
                child: Slider(
                  min: 0,
                  max: 100,
                  value: 50.0,
                  onChanged: (value) {},
                ),
              ),
            ),
            Text('04:00'),
          ],
        ),
      ),
    );
  }
}
