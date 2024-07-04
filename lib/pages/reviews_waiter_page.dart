import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuyopia/pages/profile_pages/profile_page.dart';

import '../widget/avatar.dart';
import '../widget/const.dart';
import '../widget/review.dart';

class ReviewsWaiterPage extends StatelessWidget {
  final String workerName;
  const ReviewsWaiterPage({super.key, required this.workerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child:Icon(Icons.arrow_back_ios_new)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/friend2.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workerName,
                      style: TTextStyle.t60014.copyWith(color: TColors.dark),
                    ),
                    Text("Дэвид Гетта",
                        style: TTextStyle.t60014.copyWith(color: TColors.dark)),
                  ],
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24,),
              Review(),
              Review(),
              Review(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Icon(Icons.arrow_downward),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/people_review.png'),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromRGBO(8, 192, 105, 1)),
                    child: Center(
                      child: Text('Обзор',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(child:Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height/1.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                  color: TColors.primary,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Container(
                                        width: 60,
                                        height: 4,
                                        decoration: BoxDecoration(
                                          color: TColors.secondary,
                                          borderRadius: BorderRadius.circular(
                                              defRadiusOther),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24,bottom: 24),
                                      child: Container(
                                        width:MediaQuery.of(context).size.width/2,
                                        child: ListTile(
                                          leading:  Image.asset(
                                            'assets/friend2.png',
                                          ),
                                          title: Text(
                                            workerName,
                                            style: TTextStyle.t60014.copyWith(color: TColors.dark),
                                          ),
                                          subtitle: Text("Дэвид Гетта",
                                              style: TTextStyle.t60014.copyWith(color: TColors.dark)),

                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, bottom: 16),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width /
                                              1.5,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Оценка:",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.black)),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(
                                                        245, 148, 35, 1),
                                                    size: 36,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(
                                                        245, 148, 35, 1),
                                                    size: 36,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(
                                                        245, 148, 35, 1),
                                                    size: 36,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(
                                                        245, 148, 35, 1),
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
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Colors.grey, width: 2)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 16),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width / 3,
                                          child: TextField(
                                            /*scrollPadding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context).viewInsets.bottom + 20*4),*/
                                            onChanged: (val) {},
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Комментарии",
                                              hintStyle: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 32),
                                      child: Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color:
                                            Color.fromRGBO(0, 32, 96, 1)),
                                        child: Center(
                                          child: Text("Отправить",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    )
                                  ],
                                )));
                          });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Color.fromRGBO(8, 192, 105, 1)),
                      child: Center(
                        child: Text("Оставить отзыв",
                            style:
                            TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
