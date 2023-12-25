import 'package:flutter/material.dart';
import 'package:houzz/theme/colors.dart';

class Header extends StatefulWidget {
  List<Widget> header_items;
  Header({required this.header_items});
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.header_items,
    );
  }
}
