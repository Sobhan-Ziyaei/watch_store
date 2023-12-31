import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/ui/components/extensions.dart';
import 'package:watch_store/ui/constants/dimens.dart';
import 'package:watch_store/ui/constants/strings.dart';
import 'package:watch_store/ui/widgets/app_bar.dart';
import 'package:watch_store/ui/widgets/app_text_field.dart';
import 'package:watch_store/ui/widgets/avatar.dart';
import 'package:watch_store/ui/widgets/main_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          icon: const Icon(Icons.arrow_back),
          title: AppStrings.register,
          size: size),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppDimens.large.height,
                const Avatar(),
                AppTextField(
                  label: AppStrings.nameLastName,
                  hint: AppStrings.hintNameLastName,
                  controller: _nameController,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  label: AppStrings.homeNumber,
                  hint: AppStrings.hintHomeNumber,
                  controller: _nameController,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  label: AppStrings.address,
                  hint: AppStrings.hintAddress,
                  controller: _nameController,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  label: AppStrings.postalCode,
                  hint: AppStrings.hintPostalCode,
                  controller: _nameController,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  label: AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: _nameController,
                  inputType: TextInputType.name,
                  icon: const Icon(Icons.location_on),
                ),
                MainButton(
                    text: AppStrings.next,
                    onPressed: () {
                      Navigator.pushNamed(context, ScreenNames.getOtpScreen);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
