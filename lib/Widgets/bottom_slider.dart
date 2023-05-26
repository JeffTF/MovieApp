import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants/assets.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';
import 'package:movie_app/constants/strings.dart';
import 'package:movie_app/third_page/wanda_maximoff.dart';

class BottomSlider extends StatelessWidget {
const BottomSlider({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
List<String> imageList = [
  'https://www.hawtcelebs.com/wp-content/uploads/2012/03/Elizabeth-Olsen-at-Silent-House-Premiere-in-New-York-3.jpg',
  'https://www.hawtcelebs.com/wp-content/uploads/2012/03/Elizabeth-Olsen-at-Silent-House-Premiere-in-New-York-3.jpg',
  'https://www.hawtcelebs.com/wp-content/uploads/2012/03/Elizabeth-Olsen-at-Silent-House-Premiere-in-New-York-3.jpg',
  'https://www.hawtcelebs.com/wp-content/uploads/2012/03/Elizabeth-Olsen-at-Silent-House-Premiere-in-New-York-3.jpg',
];

return CarouselSlider(
  options: CarouselOptions(
    height: kBottomHeight,
    autoPlay: false,
    enlargeCenterPage: true,),
          items: imageList.map((imageUrl) {
        return Builder(
            builder: (BuildContext context) {
            return Hero(
              tag: 'hero',
              child: GestureDetector(onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenThree()));
              },
                child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: CachedNetworkImage(
                          imageUrl: imageUrl,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Image.asset(kPlaceHolderImg),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black],
                            )),
                      ),
                    ),
                    const Align(alignment: Alignment.bottomCenter,
                    child: Text(kWandaName,style: TextStyle(fontSize: kBottomFontSize,color: kWhiteColor),)),
                  ],
                ), ),
              ),
            );
              },
            );
          }).toList(),
    );
  }
}
