import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/ui/components/extensions.dart';
import 'package:watch_store/ui/constants/dimens.dart';
import 'package:watch_store/ui/constants/strings.dart';
import 'package:watch_store/ui/widgets/app_text_field.dart';
import 'package:watch_store/ui/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({Key? key}) : super(key: key);
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
              AppDimens.large.height,
              AppTextField(
                label: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: _controller,
                inputType: TextInputType.number,
              ),
              MainButton(
                text: AppStrings.next,
                onPressed: () {
                  Navigator.pushNamed(context, ScreenNames.getOtpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
