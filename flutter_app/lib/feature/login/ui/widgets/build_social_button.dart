import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildSocialButton extends StatelessWidget {
  final String svgPath;
  final VoidCallback onTap;

  const BuildSocialButton({
    super.key,
    required this.onTap,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(12), // Size of the circle
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[100], // Background color of circle
          boxShadow: [
            BoxShadow(
              color: AppColors.gray.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: SvgPicture.asset(
          svgPath,
          width: 30.w,
          height: 30.h,
          ),
      ),
    );
  }
}
