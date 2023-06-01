import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';

class ProfileSegment extends StatelessWidget {
  final Widget? content, headerTrail;
  final String titleIcon;
  final String title;

  const ProfileSegment({
    super.key,
    required this.titleIcon,
    required this.title,
    this.content,
    this.headerTrail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Pallet.primary.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(titleIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: title,
                      size: 15,
                      weight: FontWeight.w700,
                    ),
                  ],
                ),
                headerTrail ?? const SizedBox.shrink(),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Pallet.primary.withOpacity(0.2),
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: content,
          ),
        ],
      ),
    );
  }
}
