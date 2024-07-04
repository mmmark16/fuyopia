import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widget/const.dart';
import 'map_page.dart';
import 'order_page.dart';

bool _isCard = true;
bool _isInRestaurant = true;

class PayForOrder extends StatefulWidget {
  const PayForOrder({super.key});

  @override
  State<PayForOrder> createState() => _PayForOrderState();
}

class _PayForOrderState extends State<PayForOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 32, 96, 1),
        title: Text(
          'Подтверждение заказа',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 32, 96, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          SvgPicture.asset(
                            'assets/dish.svg',
                            width: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 52),
                            child: SvgPicture.asset(
                              'assets/sushi_plate.svg',
                              width: 90,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Итого',
                        style: TextStyle(
                            color: Color.fromRGBO(150, 150, 150, 1),
                            fontSize: 14),
                      ),
                      Text(
                        '1.254руб.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(8, 192, 105, 1),
                            fontSize: 24),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Способ оплаты',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _isCard = true;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          _isCard
                              ? Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.circle_outlined,
                                  color: Colors.white,
                                ),
                          Text(
                            'Дебетовая карта',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _isCard = false;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          !_isCard
                              ? Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.circle_outlined,
                                  color: Colors.white,
                                ),
                          Text(
                            'Наличные',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset('assets/credit_card.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _isInRestaurant = true;
                      setState(() {});
                    },
                    child: Container(
                      padding: _isInRestaurant
                          ? EdgeInsets.only(top: 4, bottom: 4)
                          : EdgeInsets.only(top: 24, bottom: 24),
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: _isInRestaurant
                              ? Color.fromRGBO(8, 192, 105, 0.5)
                              : Color.fromRGBO(150, 150, 150, 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('В ресторане',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16)),
                            Visibility(
                              visible: _isInRestaurant,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Text('Адрес, время работы',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _isInRestaurant = false;
                      setState(() {});
                    },
                    child: Container(
                      padding: !_isInRestaurant
                          ? EdgeInsets.only(top: 4, bottom: 4, right: 12)
                          : EdgeInsets.only(top: 24, bottom: 24),
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: !_isInRestaurant
                              ? Color.fromRGBO(8, 192, 105, 0.5)
                              : Color.fromRGBO(150, 150, 150, 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Доставка',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16)),
                            Visibility(
                              visible: !_isInRestaurant,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text('Адрес',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Ул. Пушкина',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                        SvgPicture.asset(
                                            'assets/button_edit_location.svg')
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color.fromRGBO(150, 150, 150, 0.5)),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: "Комментарий к заказу",
                      hintStyle: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if(_isInRestaurant){
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    color: Color.fromRGBO(0, 32, 96, 1),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height / 3,
                                  child: Column(
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
                                        padding: const EdgeInsets.only(
                                            top: 32,),
                                        child: Container(
                                            width:
                                            MediaQuery.of(context).size.height /
                                                3,
                                            child: Text(
                                                "Отсканируйте QR код выбранного столика",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.white))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 32),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => OrderPage()));
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width /
                                                1.2,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color:
                                                Color.fromRGBO(8, 192, 105, 1)),
                                            child: Center(
                                              child: Text("Отсканировать",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ));
                            });
                      }
                      else{
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MapPage()));
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Color.fromRGBO(8, 192, 105, 1)),
                      child: Center(
                        child: Text('Подтвердить заказ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
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
