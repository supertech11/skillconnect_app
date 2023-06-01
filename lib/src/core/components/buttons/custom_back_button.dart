import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skillconnect_app/src/core/navigation/app_router.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.it.pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: SvgPicture.asset(
          AppAssets.arrow_back,
          width: 5,
          height: 5,
        ),
      ),
    );
  }
}
