import 'package:flutter/material.dart';

class Decor extends StatefulWidget {
  ImageProvider image;
  Text title;
  Text subtitle;
  Decor({required this.title, required this.subtitle, required this.image});
  @override
  State<Decor> createState() => _DecorState();
}

class _DecorState extends State<Decor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.4,
            decoration: BoxDecoration(
              image: DecorationImage(image: widget.image, fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.title,
                      widget.subtitle,
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
