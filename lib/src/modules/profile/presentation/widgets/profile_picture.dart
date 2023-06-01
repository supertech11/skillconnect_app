import 'package:flutter/material.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: const AssetImage(AppAssets.user_avatar),
          backgroundColor: Pallet.primary.withOpacity(0.4),
        ),
        const Positioned(
          top: 80,
          right: 10,
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Color(0xff008215),
          ),
        )
      ],
    );
  }
}
