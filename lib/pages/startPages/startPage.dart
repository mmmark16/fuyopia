import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}
final controller = PageController(viewportFraction: 0.8, keepPage: true);
class _StartPageState extends State<StartPage> {
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
                        'assets/img_onboard_1.png',
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
                            Text("Заголовок фичи",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
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
                      SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 5,
                          dotColor:Color.fromRGBO(132, 189, 147, 1),
                          activeDotColor: Color.fromRGBO(132, 189, 147, 1),
                          expansionFactor: 4,
                          dotWidth: 5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ButtonOnboard(
                          onPressed: () {

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
class ButtonOnboard extends StatelessWidget {
  final VoidCallback? onPressed;
  const ButtonOnboard({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color:Color.fromRGBO(132, 189, 147, 1)),
        padding: const EdgeInsets.all(14),
      ),
      child: Text(
        'Пропуск',
        style:TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600).copyWith(
          color: Color.fromRGBO(132, 189, 147, 1),
        ),
      ),
    );
  }
}
