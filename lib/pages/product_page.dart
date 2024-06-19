import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/ingredient_card.dart';
import 'dish_history.dart';

int _count = 0;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});


  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
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
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      )),
                ),
                SvgPicture.asset(
                  'assets/big_dish.svg',
                ),
                Container(
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
                            _count = _count - 1;
                            print(_count);
                            setState(() {});
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
                    Container(
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
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DishHistoryPage()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          color: Color.fromRGBO(230, 220, 205, 1),
                          width: 2,
                        )),
                    child: Center(
                        child: Text("История блюда",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(8, 192, 105, 1),
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Container(
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
