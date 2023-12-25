import 'package:flutter/material.dart';
import 'package:houzz/theme/colors.dart';
import 'package:houzz/theme/fonts.dart';

class Recbutton extends StatefulWidget {
  Text title;
  Recbutton({required this.title});

  @override
  State<Recbutton> createState() => _RecbuttonState();
}

class _RecbuttonState extends State<Recbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: paleblack),
      child: widget.title,
    );
  }
}
