import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/const.dart';

class ChatPage2 extends StatefulWidget {
  final String workerName;

  const ChatPage2({super.key, required this.workerName});

  @override
  State<ChatPage2> createState() => _ChatPage2State();
}

class _ChatPage2State extends State<ChatPage2> {

  bool checkNameWorker(){
    if(widget.workerName == "Официант"){
      return true;
    } else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  color: TColors.accent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Чат",
                    style: TTextStyle.t70024.copyWith(color: TColors.dark),
                  )),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/friend1.png',
                      ),
                    ),
                    title: Text(
                      widget.workerName,
                      style: TTextStyle.t60014.copyWith(color: TColors.dark),
                    ),
                    subtitle: Visibility(
                      visible: checkNameWorker(),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: TColors.orange,),
                          Text("5.0", style: TextStyle(color: TColors.dark),)
                        ],
                      ),
                    ),
                    /*  trailing:   Padding(
                        padding:EdgeInsets.only(right: 20,bottom: 20),
                        child:SvgPicture.asset('assets/call.svg',width: 50,height: 50,)) ,
*/
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20, left: 10, right: 20),
                      height: MediaQuery.of(context).size.height / 1.3,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        padding: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: TColors.accent),
                                        child: Text(
                                            "Здравствуйте!  У меня в супе таракан!",
                                            style: TTextStyle.t40014
                                                .copyWith(color: Colors.white)),
                                      ))),
                              Container(
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/friend1.png',
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/friend2.png',
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                color: TColors.surface),
                                            child: Text("Да, Сэр!",
                                                style: TTextStyle.t40014
                                                    .copyWith(
                                                        color: Colors.white)),
                                          ))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                color: TColors.surface),
                                            child: Text("Сейчас все исправим!",
                                                style: TTextStyle.t40014
                                                    .copyWith(
                                                        color: Colors.white)),
                                          ))),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                color: TColors.accent),
                                            child: Text("Отлично",
                                                style: TTextStyle.t40014
                                                    .copyWith(
                                                        color: Colors.white)),
                                          ))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                color: TColors.accent),
                                            child: Text("Жду с нетерпением",
                                                style: TTextStyle.t40014
                                                    .copyWith(
                                                        color: Colors.white)),
                                          ))),
                                ],
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/friend1.png',
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: TextFormField(
                                    // controller: controller,
                                    autocorrect: false,
                                    obscureText: false,
                                    onChanged: (value) {},

                                    maxLines: 1,
                                    style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400)
                                        .copyWith(color: Colors.black),
                                    cursorColor: Color(0xFFFFFFFF),
                                    decoration: InputDecoration(
                                      hintText: "Сообщение",
                                      hintStyle: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400)
                                          .copyWith(color: Colors.grey),

                                      // suffixIconConstraints: const BoxConstraints(maxWidth: 28),
                                    ),
                                  )),
                              Icon(Icons.send, color: TColors.accent),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
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
