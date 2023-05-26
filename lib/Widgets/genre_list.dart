import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';

class GenreList extends StatelessWidget {
  final List<String> genres = ['Drama', 'Adventure', 'Fantasy', 'Animation', 'Drama', 'Horror', 'Action', 'Comedy', 'History', 'Western', 'Thriller', 'Crime', 'Documentary', 'Music', 'Romantic', 'Family', 'War', 'TVMovie'];

  GenreList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kGenreListHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Text(
              genres[index],
              style: const TextStyle(fontSize: kGenreListFontSize,color: kWhiteColor),
            ),
          );
        },
      ),
    );
  }
}
