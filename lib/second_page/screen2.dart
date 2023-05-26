import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Widgets/list_view_image.dart';
import 'package:movie_app/constants/assets.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';
import 'package:movie_app/constants/strings.dart';
import 'package:movie_app/second_page/container_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[
          SliverAppBar(
            pinned: true,
            backgroundColor: kBlackColor,
            expandedHeight: k2SliverAppbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(k2ScreenTitle),
              background: Stack(
                children: [
                  Positioned.fill(
                child: CachedNetworkImage(
                  imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Image.asset(kPlaceHolderImg),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
          ),
                  const Align(alignment: Alignment.bottomCenter,
                      child:  Text(k2ScreenGenre,style:TextStyle(color: kWhiteColor),),)
                ],
              ),
            ),
          ),
        ],
        body:SingleChildScrollView( child: Container(
              // height: double.infinity,
              // width: double.infinity,
               color: kBlackColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(kStoryLine,
                style: TextStyle(
                  color: kWhiteColor,fontWeight: FontWeight.bold,
                  fontSize: kTitleFontSize,),),
                const SizedBox(height: 15),
                const Text(kStoryRecap,
                  style:TextStyle(
                    color: kWhiteColor,
                    fontSize: kTextFontSize),),
                const SizedBox(height: 25),
                const Text(kStarCast,
                  style: TextStyle(
                    color: kWhiteColor,fontWeight: FontWeight.bold,
                    fontSize: kTitleFontSize,),),
                Row(children: [
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kActress,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kActress2,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kActor,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                ],),
                const SizedBox(height: 15),
                const Text(kTalentSquad,
                  style: TextStyle(
                    color: kWhiteColor,fontWeight: FontWeight.bold,
                    fontSize: kTitleFontSize,),),
                Row(children: [
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kCrew1,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kCrew2,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                  Expanded(
                    child: ContainerWidget(child: Row(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg'),
                        const Text(kCrew3,style: TextStyle(color: kWhiteColor),),
                      ],
                    )),
                  ),
                ],),
                const SizedBox(height: kTextFontSize),
                const Text(kProductionCompany,
                  style: TextStyle(
                    color: kWhiteColor,fontWeight: FontWeight.bold,
                    fontSize: kTitleFontSize,),),
                const SizedBox(height: 15),
                Row(children: [
                  ContainerWidget(child: Column(
                    children: [
                      CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg',height: 80),
                      const Text(kMarvel,style: TextStyle(color: kWhiteColor),),
                    ],
                  )),
                  const SizedBox(width: 20),
                  ContainerWidget(child: Column(
                    children: [
                      CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/71nwO6MO0vS._AC_SL1050_.jpg',height: 80,),
                      const Text(kMarvel,style: TextStyle(color: kWhiteColor),),
                  ],
                  )),
              ],),
                const SizedBox(height: 15,),
                const Text(kRecommend,
                  style: TextStyle(
                    color: kWhiteColor,fontWeight: FontWeight.bold,
                    fontSize: kTitleFontSize,),),
                const ListViewImages(height: 400),
                const SizedBox(height: 15,),
          ],
          ),)
        ),
      ),
      );
  }
}
