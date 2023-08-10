import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/ui/components/extensions.dart';
import 'package:watch_store/ui/components/text_style.dart';
import 'package:watch_store/ui/constants/dimens.dart';
import 'package:watch_store/ui/constants/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Assets.png.avatar.image(),
        ),
        AppDimens.medium.height,
        const Text(AppStrings.chooseProfileImage,
            style: LightAppTextStyle.title),
      ],
    );
  }
}
