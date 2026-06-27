import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/constants.dart';
import 'package:flutter_app/core/helper/shared_pref_helper.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/core/widgets/app_text_button.dart';
import 'package:flutter_app/feature/login/data/models/login_request_model.dart';
import 'package:flutter_app/feature/login/logic/login_cubit.dart';
import 'package:flutter_app/feature/login/logic/login_states.dart';
import 'package:flutter_app/feature/login/ui/widgets/email_and_password.dart';
import 'package:flutter_app/feature/login/ui/widgets/terms_conditions_tex.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import 'already_have_acount_text.dart';
import 'build_social_buttons_row.dart';
import 'divider_with_sign_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      builder: (context, state) {
        var cubit = context.read<LoginCubit>();
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: AppTextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                EmailAndPassword(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.font12BlueRegular,
                    ),
                  ),
                ),
                verticalSpace(30),
                // AppTextButton(
                //   buttonText: 'login',
                //   textStyle: AppTextStyles.font16WhiteSemiBold,
                //   onPressed: () {
                //     //navigate to home view
                //     AppRouter.router.push(AppRouter.kViewHome);
                //   },
                // ),
                state.maybeWhen(
                  loginLoading: () => Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue, // Match your app theme
                    ),
                  ),
                  orElse: () {
                    return AppTextButton(
                      buttonText: 'login',
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.login(
                            LoginRequestModel(
                              email: cubit.emailController.text,
                              password: cubit.passwordController.text,
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
                verticalSpace(46),
                DividerWithSignText(),
                verticalSpace(40),
                BuildSocialButtonsRow(),
                verticalSpace(46),
                TermsAndConditionsText(),
                verticalSpace(24),
                AlreadyHaveAcountText(),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (data) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Login Success!"),
                backgroundColor: Colors.green,
              ),
            );
             SharedPrefHelper.setSecuredString(
              SharedPrefKeys.userToken,
              data.token,
            );
            isLoggedInUser = true;
            AppRouter.router.go(AppRouter.kViewHome);
           
           // DioFactory.setTokenIntoHeaderAfterLogin(data.userData?.token ?? '');
          },
          loginError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
          },
        );
      },
    );
  }
}
