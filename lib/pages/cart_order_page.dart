import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/order_small_card.dart';

class CardOrderPage extends StatefulWidget {
  const CardOrderPage({super.key});

  @override
  State<CardOrderPage> createState() => _CardOrderPageState();
}

class _CardOrderPageState extends State<CardOrderPage> {
  bool isActive = false;
  bool isHistory = false;
  bool isCancek = false;
  List<int> _widgetCount = [1,2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 192, 105, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 250,
                      color: Color.fromRGBO(8, 192, 105, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 24),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/dish.svg',
                                            width: 80,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 52),
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
                                          color: Color.fromRGBO(0, 32, 96, 1)),
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
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(
                                    "Отменить",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(63, 45, 32, 1)),
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
                  ],
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) => Dismissible(
                  key: Key(_widgetCount[index].toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.white,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16.0),
                    child: const Icon(
                      Icons.delete,
                      color: Color.fromRGBO(8, 192, 105, 1),
                    ),
                  ),
                  child: OrderSmallCard(dishName: 'Суши',),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
