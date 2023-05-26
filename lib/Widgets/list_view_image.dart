import 'package:flutter/material.dart';
import 'package:movie_app/second_page/screen2.dart';
import 'package:movie_app/image_widget.dart';

class ListViewImages extends StatelessWidget {
  const ListViewImages({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SecondPage()));
    },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SizedBox(
          height: height,
          child: ListView(scrollDirection: Axis.horizontal,
            children: const [
              ImageWidget(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
              SizedBox(width: 30),
              ImageWidget(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
              SizedBox(width: 30),
              ImageWidget(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
              SizedBox(width: 30),
              ImageWidget(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
              SizedBox(width: 30),
              ImageWidget(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
