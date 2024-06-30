import 'package:flutter/material.dart';

import 'const.dart';

class FilterButton extends StatefulWidget {
  final String textInButton;
  final Color borderColor;
  final Color textColor;
  const FilterButton({super.key, required this.textInButton, required this.borderColor, required this.textColor});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: (){
          isPress = !isPress;
          setState(() {
          });
      },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 12, horizontal: 18),
          decoration: BoxDecoration(
            color: isPress? TColors.accent : Color.fromRGBO(0, 0, 0, 0),
              borderRadius: BorderRadius.all(
                  Radius.circular(20)),
              border: Border.all(
                  color: widget.borderColor,
                  width: 2)),
          child: Text(widget.textInButton,
              style: TextStyle(
                  fontSize: 12,
                  color: widget.textColor)),
        ),
      ),
    );
  }
}
