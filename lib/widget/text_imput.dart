import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextInputType? type;
  final String? hint;
  final Color color;
  final bool isObscure;
  final Widget? icon;
  final TextCapitalization textCapitalization;
  final int maxLine;
  final EdgeInsetsGeometry padding;
  final TextEditingController? controller;
  const InputField({
    super.key,
    this.onChanged,
    this.icon,
    this.type,
    this.hint,
    this.color = Colors.white,
    this.isObscure = false,
    this.textCapitalization = TextCapitalization.none,
    this.maxLine = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autocorrect: false,
      obscureText: isObscure,
      onChanged: onChanged,
      keyboardType: type,
      textCapitalization: textCapitalization,
      maxLines: maxLine,
      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: Color(0xFFFFFFFF)),
      cursorColor: Color(0xFFFFFFFF),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400).copyWith(color: color),
        contentPadding: padding,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        // suffixIconConstraints: const BoxConstraints(maxWidth: 28),
        suffixIcon: icon,
      ),
    );
  }
}