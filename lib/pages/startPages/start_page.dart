import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/onboard_button.dart';
import '../reg_pages/sign_in_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}
int _startIndex = 1;

final controller = PageController(viewportFraction: 0.8, keepPage: true);
class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    // TODO: implement initState
   _startIndex=1;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 23, 23, 1),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child:
        Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(

                    child: Center(
                      child: Image.asset(
                        'assets/img_onboard_${_startIndex}.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: 200,
                            child: Image.asset(
                              'assets/book_onboard.png',
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text("Заголовок фичи",style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
                            const SizedBox(height: 40),
                            Text('Описание фичи Описание фичи\nОписание фичи Описание фичи\nОписание фичи Описание фичи',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
                          ],
                        ),
                      ),
                      Flexible(child: Container()),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Flexible(
                  child: Container(),
                ),
                Flexible(
                  child: Container(),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _startIndex==1?   Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 20 ,height: 5,
                        decoration: BoxDecoration(
                          color:Color.fromRGBO(132, 189, 147, 1) ,
                          borderRadius: BorderRadius.all(Radius.circular(100))
                        ),):  Container(
                            margin: EdgeInsets.only(right: 8),width: 5 ,height: 5,
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(132, 189, 147, 1) ,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),),
                          _startIndex==2?   Container(
                            margin: EdgeInsets.only(right: 8),
                            width: 20 ,height: 5,
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(132, 189, 147, 1) ,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),):  Container(
                            margin: EdgeInsets.only(right: 8),width: 5 ,height: 5,
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(132, 189, 147, 1) ,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),),
                          _startIndex==3?   Container(
                            margin: EdgeInsets.only(right: 8),
                            width: 20 ,height: 5,
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(132, 189, 147, 1) ,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),):  Container(
                            margin: EdgeInsets.only(right: 8),width: 5 ,height: 5,
                            decoration: BoxDecoration(
                                color:Color.fromRGBO(132, 189, 147, 1) ,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),),

                      ],),


                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ButtonOnboard(
                        lable: "Пропуск",
                          onPressed: () {
_startIndex++;
setState(() {

});
if (_startIndex==4){
  _startIndex==1;
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));}
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
        /*Stack(
          fit: StackFit.expand,
          children: [

          Center(child: Image.asset('assets/img_onboard_1.png')),
          Column(
            children: [
              Image.asset('assets/book_onboard.png'),
              Text('Лого фичи'),
              Text("Заголовок фичи"),
              Text('Описание фичи Описание фичи Описание фичи Описание фичи Описание фичи Описание фичи'),

            ],
          )

        ],)*/,
      ),
    );
  }
}
