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
          Align(
            alignment: Alignment.topRight,
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
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    'Ресторан 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    'часы работ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image.asset('assets/restaurant_image.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
