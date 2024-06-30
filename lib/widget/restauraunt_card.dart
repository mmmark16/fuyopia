import 'package:flutter/material.dart';

import '../pages/restaurant_page.dart';
bool _isFavorite = false;
class RestaurantCard extends StatefulWidget {
  const RestaurantCard({super.key});

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ReastaurantPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2.5,
        height: MediaQuery.of(context).size.height/4.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(0, 32, 96, 1),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(

                  onTap: (){
                    _isFavorite=!_isFavorite;
                    setState(() {

                    });
                  },
                  child:Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(12)),
                    color: Color.fromRGBO(8, 192, 105, 1)),
                child: _isFavorite?Icon(Icons.favorite, color: Color.fromRGBO(0, 32, 96, 1),):Icon(Icons.favorite_border, color: Color.fromRGBO(0, 32, 96, 1),),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Ресторан 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 24),
                    child: Text(
                      'часы работ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(child: Image.asset('assets/restaurant_image.png', width: MediaQuery.of(context).size.width/2.5-10,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
