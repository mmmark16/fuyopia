import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuyopia/pages/profile_pages/profile_page.dart';
import 'package:fuyopia/widget/restauraunt_card.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../widget/avatar.dart';
import '../../widget/const.dart';
import '../../widget/filter_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
SfRangeValues _values = SfRangeValues( _valStart, _valEnd);
int _valStart = 500;
int _valEnd = 3000;
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        useRootNavigator: true,
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return StatefulBuilder(builder: (BuildContext context, StateSetter setState ){
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height -
                                    MediaQuery.of(context).size.height / 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                  color: Color.fromRGBO(0, 32, 96, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 16),
                                          child: Container(
                                            width: 60,
                                            height: 4,
                                            decoration: BoxDecoration(
                                              color: TColors.primary,
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
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 8),
                                        child: Text("Категории",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white)),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            FilterButton(
                                              textInButton: 'Завтрак',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Ланч',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Закуски',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          FilterButton(
                                            textInButton: 'Напитки',
                                            borderColor: Colors.white,
                                            textColor: Colors.white,
                                          ),
                                          FilterButton(
                                            textInButton: 'Фаст фуд',
                                            borderColor: Colors.white,
                                            textColor: Colors.white,
                                          ),
                                          FilterButton(
                                            textInButton: 'Десерт',
                                            borderColor: Colors.white,
                                            textColor: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8, top: 12),
                                        child: Text("Кухня",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white)),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            FilterButton(
                                              textInButton: 'Азия',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Италия',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Мексика',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            FilterButton(
                                              textInButton: 'Европа',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Япония',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Корея',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 6),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            FilterButton(
                                              textInButton: 'Бургеры',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                            FilterButton(
                                              textInButton: 'Суши',
                                              borderColor: Colors.white,
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
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
                                              thumbStrokeColor: TColors.primary,
                                              thumbColor: TColors.surface,
                                              activeTrackColor: TColors.accent,
                                              activeTrackHeight: 5,
                                              inactiveTrackColor: TColors.primary,
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
                                              /*   onChangeStart: (value)  {_values = SfRangeValues( value, _valEnd); setState(() {

                                            });},
                                            onChangeEnd:  (value)  {
                                            _values = SfRangeValues( _valStart, value);
                                            setState(() {

                                            });
                                          },*/
                                              onChanged: (SfRangeValues value) {_values = value;
                                              print("_________++++++++++++++++++++++++++++++++_");
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
                                        width: MediaQuery.of(context).size.width,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color:
                                            Color.fromRGBO(8, 192, 105, 1)),
                                        child: Center(
                                          child: Text("Фильтровать",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  ),
                                ));
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
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                        child: SvgPicture.asset(
                      "assets/filter_icon.svg",
                    )),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.only(right: 15),
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
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
                        ),
                        SvgPicture.asset(
                          'assets/search.svg',
                        ),
                      ],
                    )),
                Image.asset('assets/Place_marker.png'),
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
