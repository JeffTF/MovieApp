import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Widgets/main_image_widget.dart';
import 'package:movie_app/constants/dimens.dart';

class MainImageSlider extends StatelessWidget {
  const MainImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<String> imageList = [
      'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg',
      'https://m.media-amazon.com/images/I/61FCtqQQp4L._AC_SY879_.jpg',
      'https://m.media-amazon.com/images/I/717NEUQn0DL._AC_SL1500_.jpg',
      'https://m.media-amazon.com/images/I/61wduVlBB1L._AC_SL1050_.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: kMainImageSliderHeight,
        autoPlay: false,
        enlargeCenterPage: true,
      ),
      items: imageList.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
               child: MainImageWidget(imageUrl: imageUrl));
          },
        );
      }).toList(),
    );
  }
}
