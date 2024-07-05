import 'dart:async';

import 'package:flutter/material.dart';

import 'const.dart';

class IngredientCount extends StatefulWidget {
  final String photopath;
  final String weight;
  final String name;
  final String cost;

  const IngredientCount(
      {super.key,
      required this.photopath,
      required this.weight,
      required this.name,
      required this.cost});

  @override
  State<IngredientCount> createState() => _IngredientCountState();
}

Color _colorAdd = TColors.surface;
Color _colorRemove = TColors.surface;

class _IngredientCountState extends State<IngredientCount> {
  bool isAddpress = false;
  bool isRemovepress = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () async {
                    _colorRemove = TColors.accent;
                    setState(() {});
                    Timer(Duration(milliseconds: 100), () {
                      _colorRemove = TColors.surface;
                      setState(() {});
                    });
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: Border.all(width: 1, color: Colors.white), color: _colorRemove),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Image.asset(
                    widget.photopath,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    _colorAdd = TColors.accent;
                    setState(() {});
                    Timer(Duration(milliseconds: 100), () {
                      _colorAdd = TColors.surface;
                      setState(() {});
                    });
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: Border.all(width: 1, color: Colors.white),
                        color: _colorAdd),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                    text: widget.weight,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                TextSpan(
                  text: widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          Text(widget.cost,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ))
        ],
      ),
    );
  }
}
