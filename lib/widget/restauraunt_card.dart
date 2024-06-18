import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(0, 32, 96, 1),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 124,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(12)),
                  color: Color.fromRGBO(8, 192, 105, 1)),
              child: Icon(Icons.favorite_border, color: Color.fromRGBO(0, 32, 96, 1),),
            ),
          ),
          Positioned(
            top: 16,
            left: 20,
            child: Column(
              children: [
                Text(
                  'Ресторан 1',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'часы работ',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
              left: 2,
              top: 36,
              child: Container(
                  width: 156,
                  height: 156,
                  child:
                  Image.asset('assets/restaurant_image.png')))
        ],
      ),
    );
  }
}
