import 'package:flutter/material.dart';

class NumberPicker extends StatefulWidget {
  int num;
  NumberPicker({required this.num});
  @override
  State<NumberPicker> createState() => _NumberPickerState();
}

class _NumberPickerState extends State<NumberPicker> {
  int selectenum = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1, child: Text('Quantity')),
        Expanded(
            flex: 2,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        selectenum < widget.num
                            ? selectenum += 1
                            : selectenum = selectenum;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      size: 14,
                    ),
                  ),
                ),
                Container(
                  child: Text('${selectenum}'),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      selectenum != 0
                          ? selectenum -= 1
                          : selectenum = selectenum;
                    });
                  },
                  icon: Icon(
                    Icons.minimize,
                    size: 18,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
