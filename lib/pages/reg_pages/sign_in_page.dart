import 'package:flutter/material.dart';
import 'package:fuyopia/pages/reg_pages/pass_page.dart';
import 'package:fuyopia/pages/reg_pages/reg_page.dart';

import '../../widget/text_imput.dart';
import '../home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/src/tweens/delay_tween.dart';

import 'login_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}
TextEditingController _emailController=TextEditingController();
TextEditingController _passController=TextEditingController();
bool isLoading = false;
class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002060),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LogoSection(),
            Text('Вход', textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF))),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  InputField(
                    hint: 'email',
                    controller: _emailController,
                    onChanged: (val) {
                      _emailController.text=val;
                      setState(() {

                      });
                    },
                    icon:  Icon(Icons.check, color:_emailController.text!=''? Color(0xFFFFFFFF): Colors.transparent),
                  ),

                  const SizedBox(height: 20),
                  InputField(
                    hint: 'пароль',
                    controller: _passController,
                    isObscure: true,
                    onChanged: (val) {
                      _passController.text=val;
                      setState(() {

                      });
                    },
                    icon: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PassPage(/*selectedIndex: 0*/)));
                      },
                      style: TextButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.only(right: 20, left: 20),
                      ),
                      child: Text('Забыл?', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF))),
                    ),
                  ),
                ],
              ),
            ),
            const SignInButton(),
            const SkipSection(),
            const ToSignUpSection(),
          ],
        ),
      ),

    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.3,
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
    );
  }
}



class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20 * 1.5, 0, 0),
      child: ElevatedButton(
        onPressed: () {
if ((_emailController.text!='')&(_passController.text!="")){Navigator.push(context, MaterialPageRoute(
    builder: (context) => MyHomePage(indexPage: 0,)));}

        },
        style: ElevatedButton.styleFrom(
          backgroundColor:Color(0xFF002060),
          padding: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20 * 1.5, 0, 20 * 1.5),
              margin: const EdgeInsets.only(top: 14, right: 20),
              decoration: const BoxDecoration(
                color: Color(0xFF84BD93),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20 * 1.5, 0, 20 * 1.5),
              margin: const EdgeInsets.only(right: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFCDDFD2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Positioned.fill(
              child: isLoading
                  ? const Padding(
                padding: EdgeInsets.only(bottom: 14),
                child: SpinKitThreeBounce(color: Color(0xFFFFFFFF), size: 24),
              )
                  : Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Вход',
                  textAlign: TextAlign.center,
                  style:TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600).copyWith(color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkipSection extends StatelessWidget {
  const SkipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: ()
            {
              /*Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyHomePage(*//*selectedIndex: 0*//*)));*/
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyHomePage(indexPage: 0,)));
              },
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
            child: Text(
              'Пропустить',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF)),
            ),
          ),
        ],
      ),
    );
  }
}

class ToSignUpSection extends StatelessWidget {
  const ToSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20 * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Новый пользователь?',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF)),
          ),
          TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegPage()));},
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
            child: Text(
              'Регистрация',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color:  Color(0xFF84BD93)),
            ),
          )
        ],
      ),
    );
  }
}


class SpinKitThreeBounce extends StatefulWidget {
  const SpinKitThreeBounce({
    Key? key,
    this.color,
    this.size = 50.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1400),
    this.controller,
  })  : assert(
  !(itemBuilder is IndexedWidgetBuilder && color is Color) && !(itemBuilder == null && color == null),
  'You should specify either a itemBuilder or a color',
  ),
        super(key: key);

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<SpinKitThreeBounce> createState() => _SpinKitThreeBounceState();
}

class _SpinKitThreeBounceState extends State<SpinKitThreeBounce> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ?? AnimationController(vsync: this, duration: widget.duration))..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size(widget.size * 2, widget.size),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (i) {
            return ScaleTransition(
              scale: DelayTween(
                begin: 0.0,
                end: 1.0,
                delay: i * .2,
              ).animate(_controller),
              child: SizedBox.fromSize(
                size: Size.square(widget.size * 0.5),
                child: _itemBuilder(i),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
    decoration: BoxDecoration(
      color: widget.color,
      shape: BoxShape.circle,
    ),
  );
}
