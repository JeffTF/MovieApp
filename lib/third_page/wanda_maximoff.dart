import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Widgets/list_view_image.dart';
import 'package:movie_app/constants/assets.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/dimens.dart';
import 'package:movie_app/constants/strings.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(tag: 'hero',
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[
              SliverAppBar(
                pinned: true,
                backgroundColor: kBlackColor,
                expandedHeight: k3SliverAppBarHeight,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text(kWandaName),
                  background: Stack(
                    children: [
                      Positioned.fill(
                        child: CachedNetworkImage(
                          imageUrl: 'https://www.hawtcelebs.com/wp-content/uploads/2012/03/Elizabeth-Olsen-at-Silent-House-Premiere-in-New-York-3.jpg',
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Image.asset(kPlaceHolderImg),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                       Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, Colors.grey])
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            body: SingleChildScrollView(
              child: Container(
                color: kBlackColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(kBiography,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: kTitleFontSize,),),
                    //SizedBox(height: 15),
                    const Divider(
                      color: kWhiteColor,
                      height: kDividerHeight,
                      thickness: 1,
                    ),
                    const SizedBox(height: 25),
                    const Text(kWandaBio,
                      style:TextStyle(
                          color: kWhiteColor,
                          fontSize: kTextFontSize),),
                    const SizedBox(height: 25),
                    const Text(kMoreInfo,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: kTitleFontSize,),),
                    const Divider(
                      color: kWhiteColor,
                      height: kDividerHeight,
                      thickness: 1,
                    ),
                    const SizedBox(height: 25),
                    Table(
                  border: TableBorder.all(style: BorderStyle.none), // Add borders around each cell
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8,bottom: 8),
                            child: Text(kPlaceOfBirth,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8,bottom: 8),
                            child: Text(k2PlaceOfBirth,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(kBirthday,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(k2Birthday,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(kDeadDay,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(k2DeadDay,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(kGender,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(k2Gender,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(kPopularity,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(k2Popularity,style: TextStyle(color: kWhiteColor),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                    const SizedBox(height: 25),
                    const Text(kKnownFor,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: kTitleFontSize,),),
                    const Divider(
                      color: kWhiteColor,
                      height: kDividerHeight,
                      thickness: 1,
                    ),
                    const ListViewImages(height: 400),
                    const SizedBox(height: 15,),
              ],
          ),
        ),
            ),
        ),
      )
    );
  }
}
