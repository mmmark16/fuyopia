import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuyopia/pages/profile_pages/profile_page.dart';

import '../widget/avatar.dart';
import '../widget/const.dart';
import '../widget/delivery_card.dart';

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
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                },
                child: CustomAvatar(
                  backColor: TColors.accent,
                  width: 45,
                  url: 'assets/no_avatar.png',
                  name: "Дениска Биткоин",
                )),
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
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DeliveryCard(photoPath: 'assets/delivery_logo.png', deliveryName: 'delivery-club', available: 'Доступно',),
                  DeliveryCard(photoPath: 'assets/yandeks_logo.png', deliveryName: 'yandex-еда', available: 'Недоступно',),
                  DeliveryCard(photoPath: 'assets/pwa_logo.png', deliveryName: 'От ресторана', available: 'Доступно',),
                ],
              ),
            ),
          ],
        ),      ),
    );
  }
}
