import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import 'const.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Color bgColor;
  final Color? borderColor;
  final double? rightTopRadius;
  final double? rightBottomRadius;
  final VoidCallback? onPressed;
  final Widget? child;

  const CustomButton({
    super.key,
    this.bgColor = TColors.surface,
    this.onPressed,
    this.child,
    this.rightTopRadius,
    this.rightBottomRadius,
    this.borderColor,
    this.padding,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        elevation: 0,
        padding: padding ?? const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(defRadiusOther),
            topRight: Radius.circular(rightTopRadius ?? defRadiusOther),
            bottomLeft: const Radius.circular(defRadiusOther),
            bottomRight: Radius.circular(rightBottomRadius ?? defRadiusOther),
          ),
        ),
      ),
      onPressed: onPressed,
      child:  child,
    );
  }
}
