import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/const.dart';
import '../../widget/filter_button.dart';
import '../../widget/food_card.dart';
import '../../widget/sushi_card.dart';
import '../chef_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isSushi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            Container(
                width: 56,
                height: 56,
                child: Image.asset('assets/restaurant_image.png')),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChefPage()));
              },
              child: Container(
                  width: 42, height: 42, child: Image.asset('assets/Chef.png')),
            ),
            CircleAvatar(
              child: Icon(Icons.person),
              radius: 24,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Поиск",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        )),
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
                                      MediaQuery.of(context).size.height / 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 16),
                                            child: Container(
                                              width: 60,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color: TColors.accent,
                                                borderRadius: BorderRadius.circular(
                                                    defRadiusOther),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 32, bottom: 16),
                                            child: Text("Фильтр",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Colors.black)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: Text("Категории",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              FilterButton(textInButton: 'Завтрак', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Ланч', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Закуски', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            FilterButton(textInButton: 'Напитки', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            FilterButton(textInButton: 'Фаст фуд', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            FilterButton(textInButton: 'Десерт', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 16, top: 36),
                                          child: Text("Кухня",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              FilterButton(textInButton: 'Азия', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Италия', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Мексика', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              FilterButton(textInButton: 'Европа', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Япония', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Корея',borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              FilterButton(textInButton: 'Бургеры', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                              FilterButton(textInButton: 'Суши', borderColor: Color.fromRGBO(0, 32, 96, 1), textColor: Colors.grey,),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(12)),
                                              color: Color.fromRGBO(8, 192, 105, 1)),
                                          child: Center(
                                            child: Text("Фильтровать",
                                                style: TextStyle(
                                                    fontSize: 16, color: Colors.white)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                            });
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Container(
                            child: SvgPicture.asset(
                              "assets/filter_icon_green.svg",
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          isSushi = false;
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'Горячее',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Десерт',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Напитки',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Закуски',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isSushi = true;
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'Суши',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: !isSushi
                    ? [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FoodCard(
                                photoPath: 'assets/salad.png',
                              ),
                              FoodCard(
                                photoPath: 'assets/chicken.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FoodCard(
                                photoPath: 'assets/fish.png',
                              ),
                              FoodCard(
                                photoPath: 'assets/spaghetti.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FoodCard(
                                photoPath: 'assets/sushi.png',
                              ),
                              FoodCard(
                                photoPath: 'assets/hamburger.png',
                              ),
                            ],
                          ),
                        ),
                      ]
                    : [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SushiCard(),
                              SushiCard(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SushiCard(),
                              SushiCard(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SushiCard(),
                              SushiCard(),
                            ],
                          ),
                        ),
                      ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
