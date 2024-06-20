import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/review.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

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
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 60,
                      color: Color.fromRGBO(0, 32, 96, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Отзывы", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(context: context, builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                            color: Color.fromRGBO(8, 192, 105, 1),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 32, bottom: 16),
                                child: Text("Ресторан 1 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white) ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: CircleAvatar(
                                  child: Icon(Icons.person),
                                  radius: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text("Денис Биткоин", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white) ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, bottom: 16),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/1.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Оценка:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white) ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(245, 148, 35, 1),
                                              size: 36,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(245, 148, 35, 1),
                                              size: 36,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(245, 148, 35, 1),
                                              size: 36,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(245, 148, 35, 1),
                                              size: 36,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 36,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, top: 16),
                                  child: Text(
                                    "Комментарий", style: TextStyle(fontSize: 12, color: Colors.white)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 32),
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                     color: Color.fromRGBO(0, 32, 96, 1)
                                  ),
                                  child: Center(
                                    child: Text(
                                        "Отправить", style: TextStyle(fontSize: 12, color: Colors.white)
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        );
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.5,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(24)),
                          color: Color.fromRGBO(8, 192, 105, 1)),
                      child: Center(
                        child: Text(
                          "Оставить отзыв", style: TextStyle(fontSize: 16, color: Colors.white)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Review(),
            Review(),
            Review(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16),
              child: Icon(Icons.arrow_downward),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/people_review.png'),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(12)),
                      color: Color.fromRGBO(8, 192, 105, 1)),
                  child: Center(
                    child: Text(
                      'Обзор', style: TextStyle(fontSize: 16, color: Colors.white)
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
