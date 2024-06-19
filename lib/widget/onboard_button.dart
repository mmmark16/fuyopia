import 'package:flutter/material.dart';

class ButtonOnboard extends StatelessWidget {

  final VoidCallback? onPressed;
  final String lable;
  const ButtonOnboard( {super.key, this.onPressed, required this.lable});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color:Color.fromRGBO(132, 189, 147, 1)),
        padding: const EdgeInsets.all(14),
      ),
      child: Text(
        lable ,
        style:TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600).copyWith(
          color: Color.fromRGBO(132, 189, 147, 1),
        ),
      ),
    );
  }
}
