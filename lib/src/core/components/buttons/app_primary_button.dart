import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  final bool isLoading;
  final String label;
  final Color labelColor, buttonColor;
  final double radius, height;
  final VoidCallback? onPressed;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const AppPrimaryButton({
    Key? key,
    required this.label,
    this.labelColor = Colors.white,
    this.buttonColor = Pallet.primary,
    this.radius = 8,
    this.height = 40,
    this.onPressed,
    this.isLoading = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: isLoading
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: SizedBox(
                    key: Key("loader"),
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                        backgroundColor: Colors.white),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    prefixIcon ?? const SizedBox.shrink(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CustomText(
                        text: label,
                        color: labelColor,
                      ),
                    ),
                    suffixIcon ?? const SizedBox.shrink()
                  ],
                )),
    );
  }
}
