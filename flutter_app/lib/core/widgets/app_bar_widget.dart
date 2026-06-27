import 'package:flutter/material.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String? iconPath;
  final VoidCallback? onIconBackPressed;
  final VoidCallback? onIconPressed;
  final Color? backIconColor;
  final Color? titleColor;
  const AppBarWidget({
    super.key,
    required this.title,
    this.iconPath,
    this.onIconPressed,
    this.backIconColor,
    this.titleColor, this.onIconBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (title != 'Projects')
          InkWell(
            onTap:  onIconBackPressed ??() {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: backIconColor == null
                    ? AppColors.moreLightGray
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: backIconColor == null
                      ? AppColors.lighterGray
                      : Colors.transparent,
                  width: 1.3,
                ),
              ),
              child: SvgPicture.asset(
                "assets/svgs/back_icon.svg",
                width: 24.w,
                height: 24.h,
                color: backIconColor ?? Colors.black,
              ),
            ),
          ),

        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(title, style: AppTextStyles.font18BlackSemiBold.copyWith(color: titleColor ?? Colors.black)),
          ),
        ),
        if (iconPath != null && iconPath!.isNotEmpty)
          InkWell(
            onTap: onIconPressed,
            child: Container(
              alignment: Alignment.center,
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.moreLightGray,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.lighterGray, width: 1.3),
              ),
              child: SvgPicture.asset(
                iconPath!,
                width: 24.w,
                height: 24.h,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}
