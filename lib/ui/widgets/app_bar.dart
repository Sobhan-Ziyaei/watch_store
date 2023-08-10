import 'package:flutter/material.dart';
import 'package:watch_store/ui/components/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget icon;
  final String title;
  final Size size;
  CustomAppBar({required this.icon, required this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * 0.1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Row(
            children: [
              icon,
              const Spacer(),
              Text(title, style: LightAppTextStyle.title),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size.height * 0.1);
}
