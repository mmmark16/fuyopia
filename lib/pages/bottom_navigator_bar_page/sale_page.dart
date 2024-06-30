import 'package:flutter/material.dart';

import '../../widget/avatar.dart';
import '../../widget/const.dart';
import '../profile_pages/profile_page.dart';


class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State createState() => _TestState();
}
class _TestState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Акции и скидки'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Stack(
                      children: [
                        Image.asset('assets/sale1.png'),
                        Positioned(
                          left: 16,
                          top: 50,
                          child: Row(
                            children: [
                              Text('1', style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/2.8,
                                child: Text(
                                    'доставка бесплатно', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset('assets/sale2.png'),
                        Image.asset('assets/sale22.png'),
                        Positioned(
                          left: 190,
                          top: 80,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                child: Text(
                                    'Карта лояльности', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset('assets/sale3.png'),
                        Positioned(
                          left: 220,
                          top: 65,
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                child: Column(
                                  children: [
                                    Text(
                                        'Скидка на пасту', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)
                                    ),
                                    Text(
                                        '35%', style: TextStyle(fontSize: 32, color: Color.fromRGBO(8, 192, 105, 1), fontWeight: FontWeight.bold)
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      );
  }
}