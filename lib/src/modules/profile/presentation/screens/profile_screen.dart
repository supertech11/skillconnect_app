import 'package:flutter/material.dart';

import 'package:skillconnect_app/src/core/components/buttons/custom_back_button.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';
import 'package:skillconnect_app/src/core/resources/string/string_constant.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/job_portfolio_item.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/profile_info_item.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/profile_review_item.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/profile_segment.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/skill_item.dart';
import 'package:skillconnect_app/src/modules/profile/presentation/widgets/work_experience_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallet.white,
        leading: const CustomBackButton(),
        elevation: 0,
        title: CustomText(
          text: StringConfig.text.profileView,
          weight: FontWeight.w700,
          size: 20,
          color: Pallet.primary,
        ),
        centerTitle: true,
      ),
      backgroundColor: Pallet.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfileInfoWidget(),
                ProfileSegment(
                  title: StringConfig.text.summary,
                  titleIcon: AppAssets.summary_icon,
                  content: const CustomText(
                    text:
                        "There has been a password update on your account.Kindly reach out to us immediately if this isn't your doing.  ",
                    color: Pallet.blackNeutral,
                    size: 15,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileSegment(
                  title: StringConfig.text.workExperience,
                  titleIcon: AppAssets.work_icon,
                  content: const Column(
                    children: [
                      WorkExperienceItem(
                        role: "CEO/ Founder",
                        company: "Samdom Fashion House",
                        dateRange: "June 2018- Present",
                      ),
                      WorkExperienceItem(
                        role: "Tailoring Apprentice",
                        company: "Maydan Tailoring House",
                        dateRange: "June 2011- May 2018",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileSegment(
                  title: StringConfig.text.skills,
                  titleIcon: AppAssets.chart,
                  content: const Row(
                    children: [
                      SkillItem(
                        skillTitle: "Fitting",
                      ),
                      SkillItem(
                        skillTitle: "Sewing",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileSegment(
                  title: StringConfig.text.jobPortfolio,
                  titleIcon: AppAssets.summary_icon,
                  content: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 0.8,
                      maxCrossAxisExtent: 120,
                      crossAxisSpacing: 10,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      JobPortfolioItem(),
                      JobPortfolioItem(),
                      JobPortfolioItem(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileSegment(
                  title: "${StringConfig.text.ratingsAndReview} (8)",
                  titleIcon: AppAssets.star_2,
                  headerTrail: CustomText(
                    text: StringConfig.text.seeMore,
                    isUnderlined: true,
                    size: 11,
                    weight: FontWeight.w500,
                  ),
                  content: const ProfileReviewItem(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
