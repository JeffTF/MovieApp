import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ContainerWidget extends StatelessWidget{
  const ContainerWidget( {Key? key, required this.child}): super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor)),
        child: child );
  }
}
