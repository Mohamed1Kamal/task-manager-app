import 'package:flutter/material.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey.shade200,
          child: Image.asset("assets/images/avatar_image.png", width: 120.w, height: 120.h),
        ),
        Positioned(
          bottom: 0.h,
          right: 0.w,
          child: Container(
            padding:  EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: const BoxDecoration(
              color: AppColors.lighterGray,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/svgs/edit_icon.svg", width: 16.w, height: 16.h),
          ),
        ),
      ],
    );
  }
}