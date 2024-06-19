import 'package:flutter/material.dart';
import 'package:fuyopia/pages/startPages/start_page.dart';
import 'package:fuyopia/widget/restauraunt_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()));},
                child:Icon(
              Icons.toc,
              color: Color.fromRGBO(0, 32, 96, 1),
            )),
          ),
          actions: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Поиск",
                      style: TextStyle(fontSize: 24),
                    ),
                    Icon(
                      Icons.search,
                      size: 36,
                      color: Color.fromRGBO(0, 32, 96, 1),
                    )
                  ],
                )),
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
              radius: 36,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 36),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RestaurantCard(),
                    RestaurantCard(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantCard(),
                  RestaurantCard(),
                ],
              ),

            ],
          ),
        ));
  }
}
