import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CancelOrderCard extends StatelessWidget {
  const CancelOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, top: 16),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(8, 192, 105, 1)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/dish.svg',
                      width: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 52),
                      child: SvgPicture.asset(
                        'assets/sushi_plate.svg',
                        width: 80,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Шашлык, паста', style: TextStyle(fontSize: 14, ),),
                      Row(
                        children: [
                          Text('765руб. • ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('2 блюда', style: TextStyle(fontSize: 14, color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.cancel, color: Colors.white,),
              Text('Доставка', style: TextStyle(fontSize: 14, color: Colors.white),),
              Text('#342347', style: TextStyle(fontSize: 14, ),),
              Text('26 Июля 12:34', style: TextStyle(fontSize: 14,color: Colors.white ),),
            ],
          ),
        ],
      ),
    );
  }
}
