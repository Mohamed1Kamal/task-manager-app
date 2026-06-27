import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/constants.dart';
import 'package:flutter_app/core/helper/shared_pref_helper.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/core/widgets/app_bar_widget.dart';
import 'package:flutter_app/core/widgets/app_text_button.dart';
import 'package:flutter_app/feature/profile/ui/widgets/avatar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  child: AppBarWidget(
                    title: 'Profile',
                    titleColor: Colors.white,
                    backIconColor: Colors.white,
                  ),
                ),
                verticalSpace(80),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        verticalSpace(70),
                        Text(
                          "Mohamed Kamal",
                          style: AppTextStyles.font18BlackSemiBold,
                        ),
                        verticalSpace(5),
                        Text(
                          "mohamed.kamal.dev@gmail.com",
                          style: AppTextStyles.font14LightGrayRegular,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 20.h,
                          ),
                          child: AppTextButton(
                            buttonText: 'logout',
                            textStyle: AppTextStyles.font16WhiteSemiBold,
                            onPressed: () async {
                              await SharedPrefHelper.clearAllSecuredData();

                              isLoggedInUser = false;

                              AppRouter.router.go('/');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 90.h,
              left: 0.w,
              right: 0.w,
              child: Center(child: AvatarWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
