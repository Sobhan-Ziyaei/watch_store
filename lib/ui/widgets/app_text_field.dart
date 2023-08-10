import 'package:flutter/material.dart';
import 'package:watch_store/ui/components/extensions.dart';
import 'package:watch_store/ui/components/text_style.dart';
import 'package:watch_store/ui/constants/dimens.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String preFixLabel;
  final String hint;
  TextEditingController controller;
  final Widget icon;
  TextAlign textAlign;
  TextInputType inputType;

  AppTextField({
    required this.label,
    this.preFixLabel = '',
    required this.hint,
    required this.controller,
    this.icon = const SizedBox(),
    this.textAlign = TextAlign.center,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(preFixLabel, style: LightAppTextStyle.title),
                const Spacer(),
                Text(label, style: LightAppTextStyle.title),
              ],
            ),
          ),
          AppDimens.large.height,
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.75,
            child: TextField(
              textAlign: textAlign,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintStyle: LightAppTextStyle.hint,
                hintText: hint,
                prefixIcon: icon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
