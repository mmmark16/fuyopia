import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../widget/avatar.dart';
import '../../widget/const.dart';
import '../../widget/filter_button.dart';
import '../../widget/food_card.dart';
import '../../widget/sushi_card.dart';
import '../chef_page.dart';
import '../home_page.dart';
import '../profile_pages/profile_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}
SfRangeValues _values = SfRangeValues( _valStart, _valEnd);
int _valStart = 500;
int _valEnd = 3000;
bool _isHot = true;
bool _isDesert = false;
bool _isDrink = false;
bool _isSnacks = false;
bool _isSushi = false;

class _MenuPageState extends State<MenuPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new), onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(indexPage: 0)));
        } ,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ресторан 1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(
                  "часы работ",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            Container(
                width: 56,
                height: 56,
                child: Image.asset('assets/restaurant_image.png')),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChefPage()));
              },
              child: Container(
                  width: 42, height: 42, child: Image.asset('assets/Chef.png')),
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
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextField(
                                onChanged: (val) {},
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Поиск",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/search.svg',
                            ),
                          ],
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
                              return StatefulBuilder(builder: (BuildContext context, StateSetter setState ){
                                return SingleChildScrollView(
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height -
                                          MediaQuery.of(context).size.height / 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(16),
                                            topLeft: Radius.circular(16)),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Container(
                                                width: 60,
                                                height: 4,
                                                decoration: BoxDecoration(
                                                  color: TColors.accent,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      defRadiusOther),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text("Фильтр",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 24,
                                                      color: Colors.black)),
                                            ),
                                            Text("Категории",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Colors.black)),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FilterButton(
                                                  textInButton: 'Завтрак',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Ланч',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Закуски',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FilterButton(
                                                  textInButton: 'Напитки',
                                                  borderColor:
                                                  Color.fromRGBO(0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Фаст фуд',
                                                  borderColor:
                                                  Color.fromRGBO(0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Десерт',
                                                  borderColor:
                                                  Color.fromRGBO(0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                              ],
                                            ),
                                            Text("Кухня",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Colors.black)),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FilterButton(
                                                  textInButton: 'Азия',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Италия',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Мексика',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FilterButton(
                                                  textInButton: 'Европа',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Япония',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Корея',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FilterButton(
                                                  textInButton: 'Бургеры',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                                FilterButton(
                                                  textInButton: 'Суши',
                                                  borderColor: Color.fromRGBO(
                                                      0, 32, 96, 1),
                                                  textColor: Colors.grey,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      bottom: defPadding * 2),
                                                  child: Text(
                                                    'Цена',
                                                    style: TTextStyle.t60018.copyWith(
                                                      color: TColors.primary,
                                                    ),
                                                  ),
                                                ),
                                                SfRangeSliderTheme(
                                                  data:  SfRangeSliderThemeData(
                                                    tooltipBackgroundColor:
                                                    TColors.accent,
                                                    tooltipTextStyle: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w400),
                                                    thumbRadius: 9,
                                                    thumbStrokeWidth: 2,
                                                    thumbStrokeColor: TColors.surface,
                                                    thumbColor: TColors.surface,
                                                    activeTrackColor: TColors.accent,
                                                    activeTrackHeight: 5,
                                                    inactiveTrackColor: TColors.surface,
                                                    inactiveTrackHeight: 5,
                                                  ),
                                                  child: SfRangeSlider(
                                                    min: 500,
                                                    max: 3000,
                                                    interval: 50,
                                                    stepSize: 50,
                                                    enableTooltip: true,
                                                    shouldAlwaysShowTooltip: true,
                                                    values: _values,
                                                    onChanged: (SfRangeValues value) {_values = value;
                                                    setState(() {
                                                    });},

                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("500",style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white)),
                                                Text("3000",style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white)),

                                              ],

                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              width:
                                              MediaQuery.of(context).size.width,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(12)),
                                                  color: Color.fromRGBO(
                                                      8, 192, 105, 1)),
                                              child: Center(
                                                child: Text("Фильтровать",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                );
                              });
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                padding: const EdgeInsets.only(bottom: 20.0, ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _isHot = true;
                          _isDesert = false;
                          _isDrink = false;
                          _isSnacks = false;
                          _isSushi = false;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Горячее',
                                style: _isHot
                                    ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: _isHot
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _isHot = false;
                          _isDesert = true;
                          _isDrink = false;
                          _isSnacks = false;
                          _isSushi = false;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Десерт',
                                style: _isDesert
                                    ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold,),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: _isDesert
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _isHot = false;
                          _isDesert = false;
                          _isDrink = true;
                          _isSnacks = false;
                          _isSushi = false;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Напитки',
                                style: _isDrink
                                    ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold,),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: _isDrink
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _isHot = false;
                          _isDesert = false;
                          _isDrink = false;
                          _isSnacks = true;
                          _isSushi = false;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Закуски',
                                style: _isSnacks
                                    ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold,),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: _isSnacks
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _isHot = false;
                          _isDesert = false;
                          _isDrink = false;
                          _isSnacks = false;
                          _isSushi = true;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Суши',
                                style: _isSushi
                                    ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                    fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold,),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: _isSushi
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Column(
                children: !_isSushi
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
