import 'package:flutter/material.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDivider({double height = 16}) {
    return  Divider(
      color: AppColors.lighterGray,
      height: height.h,
    );
  }