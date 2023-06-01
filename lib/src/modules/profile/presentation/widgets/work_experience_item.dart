import 'package:flutter/material.dart';
import 'package:skillconnect_app/src/core/components/texts/custom_text.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';

class WorkExperienceItem extends StatelessWidget {
  final String role, company, dateRange;
  const WorkExperienceItem({
    super.key,
    required this.role,
    required this.company,
    required this.dateRange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Pallet.primary.withOpacity(0.2),
            ),
            width: 40,
            height: 40,
            child: Center(
              child: CustomText(
                text: company.isNotEmpty ? company[0] : '',
                size: 20,
                weight: FontWeight.w700,
                color: Pallet.primary,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: role,
                size: 15,
                weight: FontWeight.w700,
                color: Pallet.primary,
              ),
              const SizedBox(
                height: 2,
              ),
              CustomText(
                text: company,
                size: 11,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 2,
              ),
              CustomText(
                text: dateRange,
                size: 11,
                color: Pallet.blackNeutral,
              ),
            ],
          )
        ],
      ),
    );
  }
}
