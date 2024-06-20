import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../cart_order_page.dart';
import '../pay_for_order.dart';

class ActivePage extends StatelessWidget {
  const ActivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CardOrderPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(24)),
                  color: Color.fromRGBO(8, 192, 105, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 24),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/dish.svg',
                                    width: 80,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 52),
                                    child: SvgPicture.asset(
                                      'assets/sushi_plate.svg',
                                      width: 90,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Доставка",
                          style: TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              "15:38 ",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color:
                                  Color.fromRGBO(0, 32, 96, 1)),
                            ),
                            Text(
                              "мин",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Text(
                          "Статус",
                          style: TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "В пути",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 32, 96, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, bottom: 16),
                          child: Text(
                            "Стэйк, суши",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "#342347",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 32, 96, 1)),
                        ),
                        SizedBox(height: 90),
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: 16),
                          child: Text(
                            "Отменить",
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                Color.fromRGBO(63, 45, 32, 1)),
                          ),
                        ),
                        Text(
                          "Комментарий",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(63, 45, 32, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PayForOrder()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(24)),
                    color: Color.fromRGBO(8, 192, 105, 1)),
                child: Center(
                  child: Text(
                    'Подтверждение заказа',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
