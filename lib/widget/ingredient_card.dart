import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  final String photoPath;
  const IngredientsCard({super.key, required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16),),
          color: Color.fromRGBO(255, 226, 205, 1)
      ),
      child: Image.asset(photoPath),
    );
  }
}
