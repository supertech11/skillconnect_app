import 'package:flutter/material.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';

class SkillItem extends StatelessWidget {
  final String skillTitle;
  const SkillItem({
    super.key,
    required this.skillTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Pallet.primary,
          )),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      child: CustomText(
        text: skillTitle,
        size: 11,
        weight: FontWeight.w700,
      ),
    );
  }
}
