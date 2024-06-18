import 'package:flutter/material.dart';
import 'package:fuyopia/widget/restauraunt_card.dart';

class ReastaurantPage extends StatefulWidget {
  const ReastaurantPage({super.key});

  @override
  State<ReastaurantPage> createState() => _ReastaurantPageState();
}

class _ReastaurantPageState extends State<ReastaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ресторан 1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                Text(
                  "часы работ",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Icon(
              Icons.star,
              color: Color.fromRGBO(245, 148, 35, 1),
            ),
            Text(
              "8.5",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Icon(
              Icons.location_on,
              size: 36,
              color: Color.fromRGBO(
                252,
                202,
                126,
                1,
              ),
            ),
            CircleAvatar(
              child: Icon(Icons.person),
              radius: 24,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(0, 32, 96, 1),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color.fromRGBO(8, 192, 105, 1)),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromRGBO(0, 32, 96, 1),
                          ),
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
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 156,
                      child: Text(
                        "Информация о заведении",
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    Text("---"),
                    Text("---"),
                    Text("---"),
                    Text("---"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 56,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color.fromRGBO(8, 192, 105, 1)),
                          child: Center(
                              child: Text("Фото",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 56,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color.fromRGBO(0, 32, 96, 1)),
                          child: Center(
                              child: Text("Заказ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
