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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Способ оплаты',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                    ),
                    Text(
                      'Дебетовая карта',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      'Наличные',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Image.asset('assets/credit_card.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color.fromRGBO(8, 192, 105, 0.5)),
                  child: Center(
                    child: Text('В ресторане',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color.fromRGBO(150, 150, 150, 0.5)),
                  child: Center(
                    child: Text('Доставка',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    color: Color.fromRGBO(150, 150, 150, 0.5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Комментарий к заказу',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color.fromRGBO(8, 192, 105, 1)),
                  child: Center(
                    child: Text('Подтвердить заказ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16)),
                              color: Color.fromRGBO(0, 32, 96, 1),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 32, bottom: 16),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height / 4,
                                      child: Text(
                                          "Отсканируйте QR код выбранного столика",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/1.2,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        color: Color.fromRGBO(8, 192, 105, 1)),
                                    child: Center(
                                      child: Text("Отсканировать",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ),
                                )
                              ],
                            ));
                      });
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color.fromRGBO(8, 192, 105, 1)),
                  child: Center(
                    child: Text('QR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
