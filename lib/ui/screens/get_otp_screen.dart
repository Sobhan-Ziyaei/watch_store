import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/ui/components/extensions.dart';
import 'package:watch_store/ui/components/text_style.dart';
import 'package:watch_store/ui/constants/dimens.dart';
import 'package:watch_store/ui/constants/strings.dart';
import 'package:watch_store/ui/widgets/app_text_field.dart';
import 'package:watch_store/ui/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.png.mainLogo.image(),
              AppDimens.medium.height,
              Text(
                AppStrings.otpCodeSendFor
                    .replaceAll(AppStrings.replace, '09158251054'),
                style: LightAppTextStyle.title,
              ),
              AppDimens.small.height,
              const Text(
                AppStrings.wrongNumberEditNumber,
                style: LightAppTextStyle.title,
              ),
              AppDimens.large.height,
              AppTextField(
                label: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                controller: _controller,
                inputType: TextInputType.number,
                preFixLabel: '2:56',
              ),
              MainButton(
                text: AppStrings.next,
                onPressed: () {
                  Navigator.pushNamed(context, ScreenNames.registerScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
