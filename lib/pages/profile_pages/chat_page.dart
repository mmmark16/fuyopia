import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Center(child: Text("Чат",style: TTextStyle.t70024.copyWith(color:TColors.primary),)),
    ListTile(
      contentPadding: EdgeInsets.zero,
      leading:   Container(
        width: 60,
        height: 60,

        child:
        Image.asset('assets/friend1.png',)
        ,
      ),
      title: Text("Специалист поддержки",style: TTextStyle.t60014.copyWith(color: TColors.primary),),
      subtitle: Row(children: [
        Icon(Icons.star, color: TColors.accent,),
        Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: TColors.primary),)
      ],),
      trailing:   Padding(
          padding:EdgeInsets.only(right: 20,bottom: 20),
          child:SvgPicture.asset('assets/call.svg',width: 50,height: 50,)) ,

    ),
    SizedBox(height: 20,),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
     Container(
         width: MediaQuery.of(context).size.width/2,
         child: Align(
             alignment: Alignment.centerRight,
             child:Container(

        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: TColors.accent),
        child: Text("Здравствуйте!  У меня в супе таракан!",
            style:TTextStyle.t40014.copyWith(color: Colors.white)),
      ))),
        Container(
          width: 60,
          height: 60,

          child:
          Image.asset('assets/friend1.png',)
          ,
        )
    ],),

SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 60,
          height: 60,

          child:
          Image.asset('assets/friend2.png',)
          ,
        ),
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width/2,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child:Container(

                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: TColors.surface),
                      child: Text("Да, Сэр!",
                          style:TTextStyle.t40014.copyWith(color: Colors.white)),
                    ))),
            SizedBox(height: 10,),
            Container(
                width: MediaQuery.of(context).size.width/2,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child:Container(

                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: TColors.surface),
                      child: Text("Сейчас все исправим!",
                          style:TTextStyle.t40014.copyWith(color: Colors.white)),
                    ))),
          ],
        ),

      ],),
    SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width/2,
                child: Align(
                    alignment: Alignment.centerRight,
                    child:Container(

                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: TColors.accent),
                      child: Text("Отлично",
                          style:TTextStyle.t40014.copyWith(color: Colors.white)),
                    ))),SizedBox(height: 10,),
            Container(
                width: MediaQuery.of(context).size.width/2,
                child: Align(
                    alignment: Alignment.centerRight,
                    child:Container(

                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: TColors.accent),
                      child: Text("Жду с нетерпением",
                          style:TTextStyle.t40014.copyWith(color: Colors.white)),
                    ))),
          ],
        ),
        Container(
          width: 60,
          height: 60,

          child:
          Image.asset('assets/friend1.png',)
          ,
        )
      ],),
Spacer(),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Icon(Icons.camera_alt_outlined,color: Colors.white,),
      Container(
          width: MediaQuery.of(context).size.width/1.5,
          child:TextFormField(
       // controller: controller,
        autocorrect: false,
        obscureText: false,
        onChanged: (value) {

        },


        maxLines: 1,
        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF)),
        cursorColor: Color(0xFFFFFFFF),
        decoration: InputDecoration(
          hintText: "Сообщение",
          hintStyle:TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Colors.white),


          // suffixIconConstraints: const BoxConstraints(maxWidth: 28),

        ),
      )),
      Icon(Icons.send,color: TColors.accent),

    ],),
    SizedBox(height: 20,)
  ],
),
          )
        ],),
      ),

    );
  }
}
