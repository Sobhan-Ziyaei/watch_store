import 'package:flutter/material.dart';
import 'package:watch_store/ui/components/button_style.dart';
import 'package:watch_store/ui/components/text_style.dart';
import 'package:watch_store/ui/constants/dimens.dart';

class MainButton extends StatelessWidget {
  final String text;
  void Function() onPressed;
  MainButton({
    Key? key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: SizedBox(
        width: size.width * 0.75,
        height: size.height * 0.07,
        child: ElevatedButton(
          style: AppButtonStyle.mainButtonStyle,
          onPressed: onPressed,
          child: Text(text, style: LightAppTextStyle.title),
        ),
      ),
    );
  }
}
