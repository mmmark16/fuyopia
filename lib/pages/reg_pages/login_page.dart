import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuyopia/widget/const.dart';

import '../../widget/avatar.dart';
import '../../widget/custom_button.dart';
import '../../widget/text_imput.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
bool  _isVisiblePassword=false;
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.surface,
body:  SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const LogoSection(),
      Text('Приветствую',
          textAlign: TextAlign.center, style: TTextStyle.t40016.copyWith(color: TColors.primary)),
      const NameSection(),
      Padding(
        padding: const EdgeInsets.fromLTRB(defPadding, defPadding, defPadding, 0),
        child: InputField(
          hint: 'Введите пароль',
          isObscure: _isVisiblePassword,
          onChanged: (val) {},
          icon: IconButton(
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
                  : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),
        ),
      ),
      const LoginButton(),
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
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/blot.svg'),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomAvatar(
              width: 130,
              url: 'assets/no_avatar.png',
              name: "Дениска Биткоин",
            ),
          )
        ],
      ),
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defPadding / 2),
      child: Text(
        "Дениска Биткоин",
        textAlign: TextAlign.center,
        style: TTextStyle.t70030.copyWith(color: TColors.accent),
      ),
    );
  }
}


class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(defPadding, defPadding * 2, defPadding, 0),
      child: CustomButton(

        onPressed: (){},
        bgColor: TColors.accentLight,
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text('Войти', style: TTextStyle.t60015.copyWith(color: TColors.primary)),
      ),
    );
  }
}
