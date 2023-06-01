import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/sizes/size_config.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final bool isUnderlined;
  final VoidCallback? onTap;
  final bool isCentered;
  final bool isJustified;
  final TextStyle? style;
  final TextOverflow? overflow;

  const CustomText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.weight,
    this.isUnderlined = false,
    this.onTap,
    this.isCentered = false,
    this.isJustified = false,
    this.style,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: isCentered
            ? TextAlign.center
            : isJustified
                ? TextAlign.justify
                : TextAlign.left,
        overflow: overflow ?? TextOverflow.visible,
        style: style ??
            GoogleFonts.mulish(
                fontSize: size ?? SizeConfig.normalTextSize,
                fontWeight: weight ?? FontWeight.normal,
                color: color ?? Pallet.black,
                decoration: isUnderlined
                    ? TextDecoration.underline
                    : TextDecoration.none),
      ),
    );
  }
}
