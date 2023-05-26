import 'package:flutter/material.dart';
import 'package:movie_app/Widgets/bottom_slider.dart';
import 'package:movie_app/Widgets/list_view_image.dart';
import 'package:movie_app/Widgets/main_image_slider.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';
import 'package:movie_app/constants/strings.dart';
import 'Widgets/genre_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: SizedBox(
        width: kScreenWidth ,
        height: kScreenHeight ,
        child: ListView(
          scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 20,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(kSearchMovie,
                            style: TextStyle(fontSize:kTextFontSize, color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kOrangeColor,
                      ),
                      child: const Icon(Icons.search,color: kWhiteColor),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 10,
                    ),
                ],
              ),
              ),
              const SizedBox(height: 20,),
              GenreList(),
              const SizedBox(height: 10,),
              const MainImageSlider(),
              const SizedBox(height: 280,
                  child: ListViewImages(height: 400)),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(kYouMayLike,style: TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor,fontSize: 20)),
              ),
              const ListViewImages(height: 400),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(kPopular,style: TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor,fontSize: 20)),
              ),
              const ListViewImages(height: 400),
              const BottomSlider(),
              const SizedBox(height: 50),
            ],
        ),
      ),
    );
  }
}
