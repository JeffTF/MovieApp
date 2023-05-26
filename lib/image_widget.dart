import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';
import 'package:movie_app/constants/strings.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget ({Key? key,  required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 220,
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor)),
        child:Stack(
          children: [
            Positioned(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: CachedNetworkImage(imageUrl: imageUrl)
              ),
            ),
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
                    )),
              ),
            ),
            const Positioned(top: 250,
              child: SizedBox(
              width: 220,
              child: Column(
                children: [
                  Text(kImageName,
                    style: TextStyle(color: kWhiteColor,fontSize: kTitleFontSize),),
                  ListTile(
                    leading: Icon(Icons.star_border_sharp, color: kYellowColor,size: 35,),
                    title: Text(kView,style: TextStyle(
                        color: kWhiteColor),),
                    trailing: Text(kVote, style: TextStyle(
                        color: kWhiteColor),),
                  ),
                ],
              ),
            ),),
          ],
        ));
  }
}
