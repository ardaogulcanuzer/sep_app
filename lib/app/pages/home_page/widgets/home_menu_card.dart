import 'package:flutter/material.dart';
import 'package:sep_app/app/shared/sep_colors.dart';

class HomeMenuCard extends StatelessWidget {
  String title;
  IconData iconData;
  Color? iconColor;
  void Function() onPressed;

  HomeMenuCard({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.iconData,
    this.iconColor,
  }) : super(key: key) {
    iconColor ??= SepColors.primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: _itemDecoration,
        alignment: Alignment.center,
        height: 15,
        child: _itemBody,
      ),
    );
  }

  BoxDecoration get _itemDecoration {
    return BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        style: BorderStyle.solid,
        width: 0.5,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: SepColors.secondaryColor,
    );
  }

  Widget get _itemBody {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: iconColor,
            fontFamily: 'SignikaFont',
          ),
        ),
        const SizedBox(height: 10),
        Icon(
          iconData,
          size: 50,
          color: iconColor,
        ),
      ],
    );
  }
}