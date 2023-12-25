import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:houzz/components/color_picker.dart';
import 'package:houzz/components/header.dart';
import 'package:houzz/components/number_picker.dart';
import 'package:houzz/components/rectangular_button.dart';
import 'package:houzz/theme/colors.dart';
import 'package:houzz/theme/fonts.dart';

class ShowDecore extends StatefulWidget {
  Text title;
  ImageProvider image;
  List<Color> colors;
  int num;
  Text desc;
  ShowDecore({
    required this.title,
    required this.colors,
    required this.num,
    required this.image,
    required this.desc,
  });
  @override
  State<ShowDecore> createState() => _ShowDecoreState();
}

class _ShowDecoreState extends State<ShowDecore> {
  bool save = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Header(
                    header_items: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Icon(Icons.share_rounded),
                    ],
                  ),
                ),
                widget.title,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Header(
                    header_items: [
                      Text(
                        '2,000,000 \$',
                        style: greytitle,
                      ),
                      Row(
                        children: [
                          Text(
                            'Save ',
                            style: greytitle,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  save = !save;
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: save ? Colors.red : Colors.white,
                                shadows: [
                                  Shadow(
                                    color: black,
                                    blurRadius: 2,
                                  ),
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(image: widget.image, fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A Modern Tradition',
                  style: subtitle,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8), child: widget.desc),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 216, 216, 216),
                          width: 1.5),
                    ),
                  ),
                ),
                ColorPicker(colors: widget.colors),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 216, 216, 216),
                          width: 1.5),
                    ),
                  ),
                ),
                NumberPicker(num: widget.num),
                Recbutton(
                  title: Text(
                    'Order now',
                    style: wsubtitle,
                  ),
                ),
              ],
            ),
          )
        ],
      ))),
    ));
  }
}
