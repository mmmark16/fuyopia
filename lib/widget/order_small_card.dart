import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderSmallCard extends StatelessWidget {
  final String dishName;
  const OrderSmallCard({super.key, required this.dishName,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(225, 255, 255, 0.5)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SvgPicture.asset('assets/sushi_plate.svg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(dishName, style: TextStyle(fontSize: 16,),),
              Text("999руб.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color.fromRGBO(8, 192, 105, 1))
                      ),
                      child: Center(
                        child: Text(
                          '320 ккал', style: TextStyle(
                            fontSize: 13
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color.fromRGBO(8, 192, 105, 1))
                      ),
                      child: Center(
                        child: Text(
                          '120 грамм', style: TextStyle(
                            fontSize: 13
                        ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Color.fromRGBO(8, 192, 105, 1))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Color.fromRGBO(239, 136, 41, 1),),
                        Text(
                          '5.0', style: TextStyle(
                            fontSize: 13
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
