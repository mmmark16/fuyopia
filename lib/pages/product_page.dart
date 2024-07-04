import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/const.dart';
import '../widget/ingredient_card.dart';
import '../widget/ingredient_count.dart';
import 'dish_history.dart';
import 'home_page.dart';

int _count = 0;
bool _isFavorite = false;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(8, 192, 105, 1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 64),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child:  GestureDetector(
                            onTap: (){Navigator.pop(context);},
                            child:Icon(Icons.arrow_back_ios_new)),),
                  ),
                  Stack(alignment: AlignmentDirectional.center, children: [
                    SvgPicture.asset(
                      'assets/big_dish.svg',
                    ),
                    Positioned(
                      left: 200,
                      top: 160,
                      child: Container(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 7,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                  onTap: () {
                                    _isFavorite = !_isFavorite;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        color: TColors.accent),
                                    child: _isFavorite == true
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: TColors.surface),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            color: Color.fromRGBO(255, 226, 205, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  if (_count == 1) {
                                  } else {
                                    _count = _count - 1;
                                    setState(() {});
                                  }
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                )),
                            Text(_count.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            GestureDetector(
                                onTap: () {
                                  _count = _count + 1;
                                  print(_count);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Курица с овощами",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                          height: 60,
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "756 руб.",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("320 ккал",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          )),
                      Text("120 грамм",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(239, 136, 41, 1),
                          ),
                          Text("5.0",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              )),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 26.0, top: 16, bottom: 8),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Ингридиенты",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IngredientsCard(
                        photoPath: 'assets/chicken_small.png',
                      ),
                      IngredientsCard(
                        photoPath: 'assets/pumpkin.png',
                      ),
                      IngredientsCard(
                        photoPath: 'assets/lettuce.png',
                      ),
                      IngredientsCard(
                        photoPath: 'assets/turnip.png',
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height -
                                        MediaQuery.of(context).size.height / 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16)),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            color: Color.fromRGBO(0, 32, 96, 1),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Center(
                                                  child: Container(
                                                    width: 60,
                                                    height: 4,
                                                    decoration: BoxDecoration(
                                                      color: TColors.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              defRadiusOther),
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 32,
                                                            bottom: 16),
                                                    child: Text("Изменить",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 24,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 64),
                                                  child: Column(
                                                    children: [
                                                      IngredientCount(
                                                        photopath:
                                                            'assets/chicken_big.png',
                                                        weight: "110гр.",
                                                        name: " Курица",
                                                        cost: '50руб./гр.',
                                                      ),
                                                      IngredientCount(
                                                        photopath:
                                                            'assets/pumpkin_big.png',
                                                        weight: "110гр.",
                                                        name: " Тыква",
                                                        cost: '50руб./гр.',
                                                      ),
                                                      IngredientCount(
                                                        photopath:
                                                            'assets/lettuce_big.png',
                                                        weight: "110гр.",
                                                        name: " Капуста",
                                                        cost: '50руб./гр.',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('Итого',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .grey)),
                                                        Text('356руб.',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 24,
                                                                color: Colors
                                                                    .white)),
                                                      ],
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    16)),
                                                        color: Color.fromRGBO(
                                                            8, 192, 105, 1),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                              'Изменить блюдо',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white))),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              10,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 32),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    MyHomePage(
                                                                      indexPage:
                                                                          4,
                                                                    )));
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  16)),
                                                      border: Border.all(
                                                          color: Color.fromRGBO(
                                                              230, 220, 205, 1),
                                                          width: 2),
                                                      color: Colors.white,
                                                    ),
                                                    child: Center(
                                                        child: Text('Корзина',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        8,
                                                                        192,
                                                                        105,
                                                                        1)))),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Color.fromRGBO(132, 189, 147, 1)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DishHistoryPage()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Color.fromRGBO(230, 220, 205, 1),
                            width: 2,
                          )),
                      child: Center(
                          child: Text("История блюда",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(8, 192, 105, 1),
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                    indexPage: 4,
                                  )));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Color.fromRGBO(230, 220, 205, 1),
                            width: 2,
                          )),
                      child: Center(
                          child: Text("Корзина",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(8, 192, 105, 1),
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
