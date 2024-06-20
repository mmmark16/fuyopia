import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayForOrder extends StatefulWidget {
  const PayForOrder({super.key});

  @override
  State<PayForOrder> createState() => _PayForOrderState();
}

class _PayForOrderState extends State<PayForOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 32, 96, 1),
        title: Text(
          'Подтверждение заказа',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 32, 96, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/dish.svg',
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 52),
                          child: SvgPicture.asset(
                            'assets/sushi_plate.svg',
                            width: 90,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Итого',
                      style: TextStyle(
                          color: Color.fromRGBO(150, 150, 150, 1),
                          fontSize: 22),
                    ),
                    Text(
                      '1.254руб.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(8, 192, 105, 1),
                          fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
            Text('Способ оплаты'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, color: Colors.white,),
                    Text('Дебетовая карта',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle_outlined, color: Colors.white,),
                    Text('Наличные',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
