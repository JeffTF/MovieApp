import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/assets.dart';
import '../constants/colors.dart';

class MainImageWidget extends StatelessWidget {
  final String imageUrl;

  const MainImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 200,
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor)),
      child:Stack(
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
          const Positioned.fill(child: Icon(Icons.play_circle,color: kOrangeColor,size: 70,)),
        ],
      ),
    );
  }
}