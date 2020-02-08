import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:podcast_app/constants.dart';
import '../playerView/PlayerWidget.dart';

var data1 = {
  'trackName': 'Le temps d un bivouac',
  'trackTitle': 'Sur la piste des tortue',
  'trackThumbnail':
      "https://cdn.radiofrance.fr/s3/cruiser-production/2016/07/db2ba486-3181-49ca-b110-bd95acc45b58/1200x680_fievet.jpg"
};
var data2 = {
  'trackName': 'Le temps d un bivouac',
  'trackTitle': 'Sur la piste des elephants',
  'trackThumbnail':
      "https://cdn.radiofrance.fr/s3/cruiser-production/2016/06/23ed16b5-9c0d-4f3d-9fcf-911b66889c98/1200x680_drouelle_fabrice.jpg"
};
var data = [data1, data2];

class DiscoverCarrouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: CarouselSlider(
          items: data.map((data) {
            return Builder(builder: (BuildContext context) {
              return CarrouselItem(data: data);
            });
          }).toList(),
        ),
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
    print(data["Password"]);
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: kCarrouselSpacing),
            padding: EdgeInsets.all(kCarrouselPadding),
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data["trackThumbnail"]),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(kCarrouselBackgroundOpacity),
                      BlendMode.darken),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(kCarrouselBorderRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text(data["trackTitle"], style: kCarrouselTitle),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child:
                            Text(data["trackTitle"], style: kCarrouselSubTitle),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              print('play');
                              //  Navigator.push(
                              //    context,
                              //    MaterialPageRoute(
                              //       builder: (context) => PlayerView()),
                              // );
                            },
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  color: Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2.0,
                                      color: Colors.black,
                                      offset: Offset(1.0, 1.0),
                                    ),
                                  ],
                                ),
                                height: 50,
                                width: 50,
                                child: Icon(
                                  true ? Icons.play_arrow : Icons.pause,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
