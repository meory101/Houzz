import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  List<Color> colors;
  ColorPicker({required this.colors});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1, child: Text('Color')),
        Expanded(
          flex: 2,
          child: Container(
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.colors.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedindex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: selectedindex == index ? 3 : 0),
                        borderRadius: BorderRadius.circular(20),
                        color: widget.colors[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
