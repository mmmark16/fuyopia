import 'package:flutter/material.dart';

import '../../widget/const.dart';
import '../../widget/custom_button.dart';
import '../../widget/text_imput.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}
bool isVisiblePassword = false;
class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002060),
body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const LogoSection(),
      Text('Регистрация',
          textAlign: TextAlign.center, style: TTextStyle.t40016.copyWith(color: TColors.primary)),
      Padding(
        padding: const EdgeInsets.fromLTRB(defPadding, defPadding, defPadding, 0),
        child: Column(
          children: [
            InputField(
              hint: 'Имя',
              onChanged: (val) {},
              icon:  Icon(Icons.check, color: TColors.primary),
            ),
            const SizedBox(height: defPadding),
            InputField(
              hint: 'Email',
              onChanged: (val) {},
              icon: Icon(Icons.check, color: TColors.primary),
            ),
            const SizedBox(height: defPadding),
            InputField(
              hint: 'Придумай пароль',
              isObscure: isVisiblePassword ? true:false,
              onChanged: (val){},
              icon: IconButton(
                  onPressed: () {isVisiblePassword=!isVisiblePassword;
setState(() {

});
                  },
                  style: IconButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.only(right: defPadding, left: defPadding),
                  ),
                  icon: isVisiblePassword
                      ? const Icon(Icons.visibility_off_outlined, size: 18, color: TColors.primary)
                      : const Icon(Icons.visibility_outlined, size: 18, color: TColors.primary)),
            ),
          ],
        ),
      ),
      const SignUpButton(),
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
        padding: const EdgeInsets.symmetric(horizontal: defPadding),
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


class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(defPadding, defPadding * 2, defPadding, 0),
      child: CustomButton(

        onPressed: () {},
        bgColor: TColors.accentLight,
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text('Войти', style: TTextStyle.t60015.copyWith(color: TColors.primary)),
      ),
    );
  }
}
