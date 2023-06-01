import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skillconnect_app/src/core/components/buttons/app_bordered_button.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';
import 'package:skillconnect_app/src/core/resources/string/string_constant.dart';

class ProfileReviewItem extends StatelessWidget {
  const ProfileReviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Image.asset(AppAssets.sample_profile_pic),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Allen Daniels",
                      weight: FontWeight.w700,
                      size: 15,
                    ),
                    SizedBox(
                      height: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.builder(
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: SvgPicture.asset(AppAssets.star_icon),
                              );
                            }),
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                          ),
                          const CustomText(
                            text: "5.0",
                            size: 11,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const CustomText(
                text: "17 Hours Ago",
                size: 11,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomText(
          text:
              "There has been a password update on your account.Kindly reach out to us immediately if this isn't your doing.  ",
          color: Pallet.blackNeutral,
          size: 15,
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          color: Pallet.black.withOpacity(0.2),
        ),
        const SizedBox(
          height: 5,
        ),
        AppBorderedButton(
          label: StringConfig.text.writeReview,
          onPressed: () {},
        )
      ],
    );
  }
}
