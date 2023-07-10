import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';
import 'package:quick_grocery/presentation/theme/route_manager.dart';

import '../../shared/app_button.dart';
import '../../shared/app_text_field.dart';
import '../../theme/color_manager.dart';

class SignInScreen extends StatelessWidget {
  final controller = TextEditingController();
  SignInScreen({super.key});

  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 60.h),
                SvgPicture.asset(AssetsManager.phone),
                SizedBox(height: 40.h),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                      AppLocalizations.of(context)!
                          .translate('enter_your_phone')!,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: const Color(0xFF37474F),
                          ),
                      textAlign: TextAlign.left),
                ),
                SizedBox(height: 10.h),
                Text(
                  AppLocalizations.of(context)!.translate('verify_password')!,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color(0xB737474F),
                      ),
                ),
                SizedBox(height: 30.h),
                PhoneTextField(controller: controller),
                SizedBox(height: 100.h),
                AppButton(
                  color: ColorManager.btnPrimary,
                  onPressed: () {
                    debugPrint('add button ${RouteName.password}');
                    Navigator.pushNamed(context, '/password');
                  },
                  text: AppLocalizations.of(context)!.translate('next')!,
                ),
                SizedBox(height: 30.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
