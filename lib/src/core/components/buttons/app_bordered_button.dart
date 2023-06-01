import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBorderedButton extends StatelessWidget {
  final bool isLoading;
  final String label;
  final Color labelColor, borderColor;
  final double radius, height;
  final VoidCallback? onPressed;
  final String? svgIcon;

  const AppBorderedButton(
      {Key? key,
      required this.label,
      this.labelColor = Pallet.primary,
      this.borderColor = Pallet.primary,
      this.radius = 8,
      this.height = 52,
      this.onPressed,
      this.svgIcon,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        child: svgIcon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(svgIcon ?? ''),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomText(
                    text: label,
                    color: labelColor,
                  ),
                ],
              )
            : Center(
                child: CustomText(
                  text: label,
                  color: labelColor,
                ),
              ),
      ),
    );
  }
}
