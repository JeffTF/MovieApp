import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants/assets.dart';

class CacheNetworkImage extends StatelessWidget {
  const CacheNetworkImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Image.asset(kPlaceHolderImg),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
