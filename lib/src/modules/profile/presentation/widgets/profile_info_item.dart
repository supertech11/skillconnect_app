import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skillconnect_app/src/core/components/buttons/app_primary_button.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';
import 'package:skillconnect_app/src/core/resources/string/string_constant.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/profile_picture.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ProfilePicture(),
        const SizedBox(
          height: 20,
        ),
        const CustomText(
          text: "Samuel Dominic",
          weight: FontWeight.w700,
          size: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomText(
          text: "Fashion Designer, Male",
          color: Pallet.blackNeutral,
          size: 15,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.location),
                const SizedBox(
                  width: 5,
                ),
                const CustomText(
                  text: "Lagos, Nigeria.",
                  color: Pallet.blackNeutral,
                  size: 15,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppAssets.phone),
                const SizedBox(
                  width: 5,
                ),
                const CustomText(
                  text: "+234 813 970 3721",
                  color: Pallet.blackNeutral,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.message),
                const SizedBox(
                  width: 5,
                ),
                const CustomText(
                  text: "samdee@gmail.com",
                  color: Pallet.blackNeutral,
                  size: 15,
                ),
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: StringConfig.text.experience,
                  color: Pallet.blackNeutral,
                  size: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffB3C0D8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: const CustomText(
                    text: "Expert",
                    size: 15,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: AppPrimaryButton(
            label: StringConfig.text.sendMessage,
            prefixIcon: SvgPicture.asset(AppAssets.send_icon),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Pallet.black.withOpacity(0.2),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CustomText(
              text: "${StringConfig.text.joinDate}: ",
              size: 15,
              color: Pallet.primary,
              weight: FontWeight.w700,
            ),
            const CustomText(
              text: "19th August, 2021",
              size: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomText(
              text: "${StringConfig.text.completedJobs}: ",
              size: 15,
              color: Pallet.primary,
              weight: FontWeight.w700,
            ),
            const CustomText(
              text: "300",
              size: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomText(
              text: "${StringConfig.text.lastSeen}: ",
              size: 15,
              color: Pallet.primary,
              weight: FontWeight.w700,
            ),
            const CustomText(
              text: "4 Hours Ago",
              size: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Pallet.black.withOpacity(0.2),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
