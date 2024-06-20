import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuyopia/pages/chat_page2.dart';
import 'package:fuyopia/pages/order_page_2.dart';
import 'package:fuyopia/widget/const.dart';

import '../../widget/avatar.dart';
import '../../widget/custom_button.dart';
import '../../widget/text_imput.dart';
import '../order_page.dart';
import 'chat_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
bool _isAcc = true;
bool _isPay=false;
bool _isNoty=false;
bool _isFriends=false;
bool _isReview=false;
bool _isAllergy=false;
bool _isHistory=false;
bool _isAdd = false;
TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _phoneController = TextEditingController();
TextEditingController _passController = TextEditingController();
TextEditingController _adressController = TextEditingController();

TextEditingController _cardNumController = TextEditingController();
TextEditingController _dateCardController = TextEditingController();
TextEditingController _cvcController = TextEditingController();
class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    // TODO: implement initState
    _nameController.text = "Денис Биткоин";
    _emailController.text="test@mail.ru";
    _phoneController.text="+7(999)999-99-99";
    _passController.text="pass";
    _adressController.text="Ул.Пушкина";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: TColors.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 50,color: Colors.transparent,),
            Container(
padding: EdgeInsets.only(top: 20, left: 20,right: 20),
                  height: MediaQuery.of(context).size.height - 50,
                  width:  MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)))  ,
                child: Column(
                  children: [
                    Row(
                       children: [
             Column(
               children: [
                 Row(
                   children: [
                  GestureDetector(
                      onTap: (){/*Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OrderPage2()));*/},
                      child:   Padding(
                         padding:EdgeInsets.only(right: 20,bottom: 20),
                         child:SvgPicture.asset('assets/call.svg'))),
                    GestureDetector(onTap:(){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatPage()));},child: Padding(
                         padding: EdgeInsets.only(bottom: 20),
                         child:SvgPicture.asset('assets/helpChat.svg'))),
                   ],
                 ),
                 Text("Поддержка", style: TTextStyle.t40014.copyWith(color: TColors.primary),)
               ],
             ),
             Container(
               margin: EdgeInsets.only(left: 20),
               height: MediaQuery.of(context).size.width/3,
                 width:  MediaQuery.of(context).size.width/3,
               child: Stack(
                 children: [ Align(
                   alignment: Alignment.center,
                   child: CustomAvatar(
                     backColor: Colors.white,
                     width: 130,
                     url: 'assets/no_avatar.png',
                     name: "Дениска Биткоин",
                   ),
                 ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child:SvgPicture.asset('assets/foto.svg'))
                 ],
               ),
             )
                       ],
                    ),

                    Padding(
                        padding: EdgeInsets.only(top:12),
                        child:Text("Добро пожаловать!", style: TTextStyle.t40016.copyWith(color:Colors.white),)),
                    Text("Денис Биткоин", style: TTextStyle.t70024.copyWith(color:TColors.accent),),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0,top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _isAcc=true;
                                _isPay=false;
                                _isNoty=false;
                                _isFriends=false;
                                _isReview=false;
                                _isAllergy=false;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Аккаунт',
                                      style: _isAcc?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                      color: _isAcc ?TColors.accentLight:Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=true;
                                _isNoty=false;
                                _isFriends=false;
                                _isReview=false;
                                _isAllergy=false;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Платежи',
                                      style: _isPay?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isPay ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=false;
                                _isNoty=true;
                                _isFriends=false;
                                _isReview=false;
                                _isAllergy=false;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Уведомления',
                                      style: _isNoty?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isNoty ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=false;
                                _isNoty=false;
                                _isFriends=true;
                                _isReview=false;
                                _isAllergy=false;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Друзья',
                                      style: _isFriends?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isFriends ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=false;
                                _isNoty=false;
                                _isFriends=false;
                                _isReview=true;
                                _isAllergy=false;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Отзывы',
                                      style: _isReview?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isReview ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=false;
                                _isNoty=false;
                                _isFriends=false;
                                _isReview=false;
                                _isAllergy=true;
                                _isHistory=false;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Мои аллергии',
                                      style: _isAllergy?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isAllergy ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _isAcc=false;
                                _isPay=false;
                                _isNoty=false;
                                _isFriends=false;
                                _isReview=false;
                                _isAllergy=false;
                                _isHistory=true;
                                setState(() {
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'История посещений',
                                      style: _isHistory?TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white):TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 5, width: 30,
                                    decoration: BoxDecoration(
                                        color: _isHistory ?TColors.accentLight:Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                   _isAcc? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                          child: InputField(
                            controller: _nameController,
                            hint: 'Введите имя',
                            isObscure: false,
                            onChanged: (val) {_nameController.text=val;},
                            color: TColors.accent,
                           /* icon: IconButton(
                                onPressed: () {_isVisiblePassword=!_isVisiblePassword;
                                setState(() {

                                });
                                },
                                style: IconButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                                ),
                                icon: _isVisiblePassword
                                    ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                                    : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),*/
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                          child: InputField(
                            controller: _emailController,
                            hint: 'Введите email',
                            isObscure: false,
                            onChanged: (val) {_emailController.text=val;},
                            color: TColors.accent,

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                          child: InputField(
                            controller: _phoneController,
                            hint: 'Введите телефон',
                            isObscure: false,
                            onChanged: (val) {_phoneController.text=val;},
                            color: TColors.accent,

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                          child: InputField(
                            controller: _passController,
                            hint: 'Введите пароль',
                            isObscure: true,
                            onChanged: (val) {_passController.text=val;},
                            color: TColors.accent,

                          ),


                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                          child: InputField(
                            controller: _adressController,
                            hint: 'Введите адрес',
                            isObscure: false,
                            onChanged: (val) {_adressController.text=val;},
                            color: TColors.accent,

                          ),

                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                  color: TColors.accent,
                                  width: 1,
                                ),
                              ),
                              child: Icon(Icons.exit_to_app_outlined,color: Colors.white
                                ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(defPadding, 20, 0, 0),
                              child: CustomButton(

                                onPressed: (){},
                                bgColor: TColors.accent,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                child: Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5,right:MediaQuery.of(context).size.width/5, ),
                                    child:Text('Сохранить', style: TTextStyle.t60015.copyWith(color: TColors.primary))),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                       : (_isPay)&(!_isAdd) ? Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                         ListTile(
                           contentPadding: EdgeInsets.zero,
                           leading: Text("Моя карта",style: TTextStyle.t60018.copyWith(color:TColors.primary),),
                           trailing:GestureDetector(
                               onTap: (){_isAdd=true; setState(() {

                               });},
                               child: Text("Добавить",style: TTextStyle.t40014.copyWith(color:TColors.accent),)),
                         ),
                     SvgPicture.asset('assets/myCard.svg'),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0, defPadding * 2, 0, 0),
                       child: CustomButton(

                         onPressed: () {},
                         bgColor: TColors.accentLight,
                         padding: const EdgeInsets.symmetric(vertical: 14),
                         child: Text('Сохранить', style: TTextStyle.t60015.copyWith(color: TColors.primary)),
                       ),
                     )
                   ],)
                       :(_isPay)&(_isAdd) ? Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       Text("Добавить новую карту",style: TTextStyle.t60018.copyWith(color:TColors.primary),),
                       Text("Имя", style: TTextStyle.t40012.copyWith(color: Colors.white),),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child:  Padding(
                         padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                         child: InputField(
                           controller: _nameController,
                           hint: 'Введите имя',
                           isObscure: false,
                           onChanged: (val) {_nameController.text=val;},
                           color: TColors.primary,
                           /* icon: IconButton(
                                onPressed: () {_isVisiblePassword=!_isVisiblePassword;
                                setState(() {

                                });
                                },
                                style: IconButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                                ),
                                icon: _isVisiblePassword
                                    ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                                    : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),*/
                         ),
                       )),
                       Text("Номер", style: TTextStyle.t40012.copyWith(color: Colors.white),),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                         padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                         child: InputField(
                           controller: _cardNumController,
                           hint: 'Введите номер',
                           isObscure: false,
                           onChanged: (val) {_cardNumController.text=val;},
                           color: TColors.primary,
                           /* icon: IconButton(
                                onPressed: () {_isVisiblePassword=!_isVisiblePassword;
                                setState(() {

                                });
                                },
                                style: IconButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                                ),
                                icon: _isVisiblePassword
                                    ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                                    : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),*/
                         ),
                       )),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                             Text("мес/год", style: TTextStyle.t40012.copyWith(color: Colors.white),),
                            Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                child: Padding(
                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                               child: InputField(
                                 controller: _dateCardController,
                                 hint: '',
                                 isObscure: false,
                                 onChanged: (val) {_dateCardController.text=val;},
                                 color: TColors.primary,
                                 /* icon: IconButton(
                                onPressed: () {_isVisiblePassword=!_isVisiblePassword;
                                setState(() {

                                });
                                },
                                style: IconButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                                ),
                                icon: _isVisiblePassword
                                    ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                                    : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),*/
                               ),
                             )),
                           ],),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,children: [
Text("CVC", style: TTextStyle.t40012.copyWith(color: Colors.white),),
                           Container(
                               width: MediaQuery.of(context).size.width/2.5,
                               child:Padding(
                             padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                             child: InputField(
                               controller: _cvcController,
                               hint: '',
                               isObscure: true,
                               onChanged: (val) {_cvcController.text=val;},
                               color: TColors.primary,
                               /* icon: IconButton(
                                onPressed: () {_isVisiblePassword=!_isVisiblePassword;
                                setState(() {

                                });
                                },
                                style: IconButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                                ),
                                icon: _isVisiblePassword
                                    ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                                    : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),*/
                             ),
                           )),
                         ],)
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding * 2, 0, 0),
                         child: CustomButton(

                           onPressed: () {_isAdd=false;
                             setState(() {

                             });},
                           bgColor: TColors.accentLight,
                           padding: const EdgeInsets.symmetric(vertical: 14),
                           child: Text('Добавить', style: TTextStyle.t60015.copyWith(color: TColors.primary)),
                         ),
                       )
                     ],
                   )

                       :_isNoty?Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  Slidable(
    // Specify a key if the Slidable is dismissible.


    // The start action pane is the one at the left or the top side.

    // The end action pane is the one at the right or the bottom side.
    endActionPane:  ActionPane(
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          // An action can be bigger than the others.
          flex: 2,
          onPressed: (BuildContext context) {  },
          backgroundColor:Colors.transparent,
          foregroundColor: Colors.white,
          icon: Icons.delete_outline,

        ),

      ],
    ),

    child:  Container(
      padding: EdgeInsets.only(top: 20,bottom: 20),
     // height:MediaQuery.of(context).size.height/6 ,
      decoration: BoxDecoration(color: TColors.secondary, borderRadius: BorderRadius.all(Radius.circular(20))),
    child:ListTile(
      leading:  SvgPicture.asset('assets/dish2.svg',
        width: 100,
        height: 100,),
      title: Text("Акция", style: TTextStyle.t40016.copyWith(color:Colors.white)),
      subtitle: Text("15% на завтрак", style: TTextStyle.t40016.copyWith(color:Colors.grey)),

    )
    ),
  ),
  SizedBox(height: 20,),
  Slidable(
    // Specify a key if the Slidable is dismissible.


    // The start action pane is the one at the left or the top side.

    // The end action pane is the one at the right or the bottom side.
    endActionPane:  ActionPane(
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          // An action can be bigger than the others.
          flex: 2,
          onPressed: (BuildContext context) {  },
          backgroundColor:Colors.transparent,
          foregroundColor: Colors.white,
          icon: Icons.delete_outline,

        ),

      ],
    ),

    child:  Container(
        padding: EdgeInsets.only(top: 20,bottom: 20),
        // height:MediaQuery.of(context).size.height/6 ,
        decoration: BoxDecoration(color: TColors.secondary, borderRadius: BorderRadius.all(Radius.circular(20))),
        child:ListTile(
          leading:  SvgPicture.asset('assets/dish.svg',
            width: 100,
            height: 100,),
          title: Text("Новое сообщение", style: TTextStyle.t40016.copyWith(color:Colors.white)),
          subtitle: Text("5 Сентября, 11:15", style: TTextStyle.t40016.copyWith(color:Colors.grey)),

        )
    ),
  ),
],
                       )

                       :_isFriends?Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,
                                   /*     decoration: BoxDecoration(
                                       borderRadius:
                                       BorderRadius.all(Radius.circular(24)),
                                       color: Color.fromRGBO(8, 192, 105, 1)),*/
                                   child: /*Center(
                                     child: Icon(Icons.person),
                                   )*/
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.8,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Лена",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color:Colors.white), ),

                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,
                                   /*     decoration: BoxDecoration(
                                       borderRadius:
                                       BorderRadius.all(Radius.circular(24)),
                                       color: Color.fromRGBO(8, 192, 105, 1)),*/
                                   child: /*Center(
                                     child: Icon(Icons.person),
                                   )*/
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.8,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Леха",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color:Colors.white), ),

                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,
                              /*     decoration: BoxDecoration(
                                       borderRadius:
                                       BorderRadius.all(Radius.circular(24)),
                                       color: Color.fromRGBO(8, 192, 105, 1)),*/
                                   child: /*Center(
                                     child: Icon(Icons.person),
                                   )*/
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.8,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Игорь",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color:Colors.white), ),

                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                         child: Icon(Icons.keyboard_arrow_down, color:Colors.white),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                   )
                      :_isReview?Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                             Row(
                                               children: [
                                                 Icon(Icons.star, color: TColors.accent,),
                                                 Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.primary),)
                                               ],
                                             )
                                           ],
                                         ),
                                         Text("Спасибо, все ок!",style: TextStyle(fontSize: 14,color:TColors.primary), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                             Row(
                                               children: [
                                                 Icon(Icons.star, color: TColors.accent,),
                                                 Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.primary),)
                                               ],
                                             )
                                           ],
                                         ),
                                         Text("Понравилась официантка!",style: TextStyle(fontSize: 14,color:TColors.primary), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                             Row(
                                               children: [
                                                 Icon(Icons.star, color: TColors.accent,),
                                                 Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.primary),)
                                               ],
                                             )
                                           ],
                                         ),
                                         Text("Буду заходить еще!",style: TextStyle(fontSize: 14,color:TColors.primary), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                         child: Icon(Icons.keyboard_arrow_down, color:Colors.white),
                       ),
                   ],)


                       :_isAllergy?Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                         child: InputField(
                           // controller: _phoneController,
                           hint: 'Аллергия 1',
                           isObscure: false,
                           onChanged: (val) {/*_phoneController.text=val;*/},
                           color: TColors.accent,

                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                         child: InputField(
                           // controller: _phoneController,
                           hint: 'Аллергия 2',
                           isObscure: false,
                           onChanged: (val) {/*_phoneController.text=val;*/},
                           color: TColors.accent,

                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                         child: InputField(
                           // controller: _phoneController,
                           hint: 'Аллергия 3',
                           isObscure: false,
                           onChanged: (val) {/*_phoneController.text=val;*/},
                           color: TColors.accent,

                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                         child: InputField(
                           // controller: _phoneController,
                           hint: 'Аллергия 4',
                           isObscure: false,
                           onChanged: (val) {/*_phoneController.text=val;*/},
                           color: TColors.accent,

                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding, 0, 0),
                         child: InputField(
                           // controller: _phoneController,
                           hint: 'Аллергия 5',
                           isObscure: false,
                           onChanged: (val) {/*_phoneController.text=val;*/},
                           color: TColors.accent,

                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, defPadding * 2, 0, 0),
                         child: CustomButton(

                           onPressed: () {},
                           bgColor: TColors.accentLight,
                           padding: const EdgeInsets.symmetric(vertical: 14),
                           child: Text('Сохранить', style: TTextStyle.t60015.copyWith(color: TColors.primary)),
                         ),
                       )

                     ],)
                       :_isHistory
                       ?Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0,bottom: 10),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                         Text("15.06.2024",style: TextStyle(fontSize: 14,color:TColors.accent), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0,bottom: 10),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                         Text("10.06.2024",style: TextStyle(fontSize: 14,color:TColors.accent), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 0, right: 0,bottom: 10),
                         child: Column(
                           children: [
                             Row(

                               children: [
                                 Container(
                                   width: 60,
                                   height: 60,

                                   child:
                                   Image.asset('assets/friend1.png',)
                                   ,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: [
                                         Text("Денис Биткоин",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.secondary), ),
                                         Text("06.06.2024",style: TextStyle(fontSize: 14,color:TColors.accent), overflow: TextOverflow.ellipsis,),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                         child: Icon(Icons.keyboard_arrow_down, color:Colors.white),
                       ),



                     ],
                   )

    :Container()



                  ],
                ),

                ),
          ],
        ),
      ),
    );
  }
}
