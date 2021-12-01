import 'package:candlesticks/src/theme/color_palette.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  final double? width;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 50,
      height: 30,
      child: RawMaterialButton(
        fillColor: color ?? ColorPalette.whiteColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
