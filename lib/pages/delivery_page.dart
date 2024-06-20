import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

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
            CircleAvatar(
              child: Icon(Icons.person),
              radius: 24,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Color.fromRGBO(65, 195, 216, 1),
                child: Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Доставка",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 156,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromRGBO(12, 199, 8, 0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("delivery-club", style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(12, 199, 8, 1)),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/delivery_logo.png"),
                        Text("Доступно", style: TextStyle(
                            fontSize: 18,
                            color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 156,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromRGBO(63, 63, 63, 0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("yandex-еда", style: TextStyle(
                          fontSize: 18,
                          color: Colors.black),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/yandeks_logo.png"),
                        Text("Недоступно", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 156,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromRGBO(12, 199, 8, 0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("От ресторана", style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(12, 199, 8, 1)),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/pwa_logo.png"),
                        Text("Доступно", style: TextStyle(
                            fontSize: 18,
                            color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
