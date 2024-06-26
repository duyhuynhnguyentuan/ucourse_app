import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ucourse_app/common/utils/app_colors.dart';

Widget text24Normal({String text="", Color color= AppColors.primaryText}) {
  return Text(text,
    style: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.bold
    ),
  );
}

Widget text16Normal({String text="", Color color = AppColors.primarySecondaryElementText}) {
  return Text(text,
    textAlign: TextAlign.center,
    style:  TextStyle(
        color:color,
        fontSize: 16,
        fontWeight: FontWeight.normal
    ),
  );
}