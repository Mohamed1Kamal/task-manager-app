import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import 'build_social_button.dart';

class BuildSocialButtonsRow extends StatelessWidget {
  const BuildSocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        children: [
          Expanded(
            child: BuildSocialButton(
              svgPath: 'assets/svgs/google_logo.svg',
              onTap: () {},
            ),
          ),
          Expanded(
            child: BuildSocialButton(
              svgPath: 'assets/svgs/facebook_logo.svg',
              onTap: () {},
            ),
          ),
          
          Expanded(
            child: BuildSocialButton(
              svgPath: 'assets/svgs/apple_logo.svg',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
