import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuyopia/pages/home_page.dart';

import '../../widget/const.dart';
import '../../widget/custom_button.dart';
import '../../widget/onboard_button.dart';
import '../../widget/text_imput.dart';

class PassPage extends StatefulWidget {
  const PassPage({Key? key}) : super(key: key);

  @override
  State<PassPage> createState() => _PassPageState();
}

bool _page1 = true;

class _PassPageState extends State<PassPage> {

  @override
  void initState() {
    // TODO: implement initState
    _page1=true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.surface,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: TColors.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/splash.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 48),
                child: _page1
                    ? Text("Забыли пароль?",
                        style: TTextStyle.t70018.copyWith(
                          color: TColors.primary,
                        ))
                    : Text("Отправить код",
                        style: TTextStyle.t70018.copyWith(
                          color: TColors.primary,
                        ))),
            Padding(
                padding: EdgeInsets.only(left: 48),
                child: _page1
                    ? Text(
                        "Введите номер телефона",
                        style: TTextStyle.t40014.copyWith(
                          color: TColors.primary,
                        ),
                      )
                    : Text(
                        "Ожидайте код в течении 30 сек.",
                        style: TTextStyle.t40014.copyWith(
                          color: TColors.primary,
                        ),
                      )),
            _page1
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(
                        defPadding, defPadding, defPadding, 0),
                    child: Column(
                      children: [
                        const SizedBox(height: defPadding),
                        InputField(
                          hint: 'Email',
                          onChanged: (val) {},
                          icon: Icon(Icons.check, color: TColors.primary),
                        ),
                        const SizedBox(height: defPadding),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(
                        defPadding, defPadding, defPadding, 0),
                    child: Column(
                      children: [
                        const SizedBox(height: defPadding),
                        InputField(
                          hint: 'Введите код из письма',
                          onChanged: (val) {},
                          icon: Icon(Icons.check, color: TColors.primary),
                        ),
                        const SizedBox(height: defPadding),
                      ],
                    ),
                  ),
            _page1
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(
                        defPadding, defPadding, defPadding, 0),
                    child: CustomButton(
                      onPressed: () {
                        _page1 = false;
                        setState(() {});
                      },
                      bgColor: TColors.accentLight,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text('Далее',
                          style: TTextStyle.t60015
                              .copyWith(color: TColors.primary)),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(
                        defPadding, defPadding, defPadding, 0),
                    child: CustomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      bgColor: TColors.accentLight,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text('Отправить',
                          style: TTextStyle.t60015
                              .copyWith(color: TColors.primary)),
                    ),
                  ),
            !_page1
                ? Container(
              margin: EdgeInsets.only(bottom: 20,top: 20),
                    width: 70,
                    height: 70,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset('assets/circleTime.svg')),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  color: TColors.accent),
                            )),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "30s",
                            style: TTextStyle.t40014
                                .copyWith(color: TColors.primary),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(),
            !_page1
                ?   Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/3, right: MediaQuery.of(context).size.width/3),
              child: ButtonOnboard(
                lable: "Повторить",
                onPressed: () {

                },
              ),
            )
                : Container()
          ],
        ),
      ),
    );
  }
}
