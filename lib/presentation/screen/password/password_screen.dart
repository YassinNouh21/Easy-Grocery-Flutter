import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/shared/password_text_field.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

import '../../shared/app_button.dart';
import '../../shared/app_text_field.dart';
import '../../shared/text_button.dart';
import '../../theme/route_manager.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 40.h),
                  SvgPicture.asset(AssetsManager.forget),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        AppLocalizations.of(context)!
                            .translate('enter_password')!,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: const Color(0xFF37474F),
                            ),
                        textAlign: TextAlign.left),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    AppLocalizations.of(context)!
                        .translate('enter_password_to_continue')!,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color(0xB737474F),
                        ),
                  ),
                  SizedBox(height: 30.h),
                  const PasswordTextField(text: 'password'),
                  SizedBox(height: 20.h),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: AppTextButton(
                        onPressed: () {},
                        text: AppLocalizations.of(context)!
                            .translate('forgot_password')!),
                  ),
                  SizedBox(height: 60.h),
                  AppButton(
                    color: ColorManager.btnPrimary,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.signIn,
                      );
                    },
                    text: AppLocalizations.of(context)!.translate('submit')!,
                  ),
                  SizedBox(
                    height: 30.h,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
