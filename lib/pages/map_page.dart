import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuyopia/widget/const.dart';

import '../widget/avatar.dart';
import '../widget/custom_button.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              color: Colors.transparent,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 0, right: 0),
              height: MediaQuery.of(context).size.height - 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: TColors.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Stack(

                children: [
                  Image.asset(
                    'assets/map.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child:Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: TColors.accent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text('Спасибо за заказ!',
                              style: TTextStyle.t60018
                                  .copyWith(color: Colors.white)),
                        ),
                        Center(
                          child: Text('#3030303',
                              style:
                              TTextStyle.t40016.copyWith(color: Colors.black)),
                        ),
                        CustomAvatar(
                          backColor: Colors.white,
                          width: 70,
                          url: 'assets/no_avatar.png',
                          name: "Дениска Биткоин",
                        ),
                        Center(
                          child: Text('Денис Биткоин',
                              style: TTextStyle.t60018
                                  .copyWith(color: Colors.black)),
                        ),
                        Center(
                          child: Text('Адрес доставки',
                              style:
                              TTextStyle.t40016.copyWith(color: Colors.white)),
                        ),

                        Container(
                            width: MediaQuery.of(context).size.width,
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/cardLogo.svg'),
                                Column(children: [
                                  Text('•••• 2678',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white)),
                                  Text('12.564руб.',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white))
                                ],),  Icon(Icons.place_outlined,color: TColors.dark,),
                                Column(children: [
                                  Text('Дистанция',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white)),
                                  Text('2км',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white))
                                ],),
                                Icon(Icons.access_time,color: TColors.dark,),
                                Column(children: [
                                  Text('Срок',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white)),
                                  Text('15:38',style:
                                  TTextStyle.t40016.copyWith(color: Colors.white))
                                ],),


                              ],)),
                        Container(
                            width:  MediaQuery.of(context).size.width,
                            child:  ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading:   Container(
                                width: 60,
                                height: 60,

                                child:
                                Image.asset('assets/friend2.png',)
                                ,
                              ),
                              title: Text("Курьер",style: TTextStyle.t60014.copyWith(color: TColors.primary),),
                              subtitle:Container(
                                  width:  MediaQuery.of(context).size.width/4,
                                  child: Row(children: [Text("Дэвид Гетта",style: TTextStyle.t60014.copyWith(color: TColors.primary)),
                                    Icon(Icons.star, color: TColors.accent,),
                                    Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.primary),)
                                  ],)),
                              trailing:   Container(
                                  width:  MediaQuery.of(context).size.width/4,
                                  child:Padding(
                                      padding:EdgeInsets.only(right: 20,bottom: 0),
                                      child:SvgPicture.asset('assets/chatIcon.svg',))) ,

                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(defPadding, 20, 0, 20),
                          child: CustomButton(

                            onPressed: (){},
                            bgColor: TColors.accentLight,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5,right:MediaQuery.of(context).size.width/5, ),
                                child:Text('Готово', style: TTextStyle.t60015.copyWith(color: TColors.primary))),
                          ),
                        )

                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
