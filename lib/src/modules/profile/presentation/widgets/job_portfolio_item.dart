import 'package:flutter/material.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';

class JobPortfolioItem extends StatelessWidget {
  const JobPortfolioItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(AppAssets.suit_sample),
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomText(
          text: "3- Piece Suit",
          size: 11,
          weight: FontWeight.w700,
        ),
      ],
    );
  }
}
