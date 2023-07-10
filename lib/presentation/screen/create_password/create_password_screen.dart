import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';

import '../../shared/app_app_bar.dart';
import '../../shared/app_button.dart';
import '../../shared/password_text_field.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // add my custom app bar woth preferred size
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: const AppAppBar(title: 'choose_password'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              SizedBox(height: 30.h),
              Text(
                AppLocalizations.of(context)!.translate('password_info')!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xB737474F),
                    ),
              ),
              SizedBox(height: 10.h),
              SvgPicture.asset(AssetsManager.createPassword),
              SizedBox(height: 30.h),
              const PasswordTextField(text: 'password'),
              SizedBox(height: 18.h),
              const PasswordTextField(text: 'confirm_password'),
              SizedBox(height: 30.h),
              AppButton(
                onPressed: () {},
                text: AppLocalizations.of(context)!.translate('finish')!,
              ),
              SizedBox(height: 30.h)
            ]),
          ),
        ),
      ),
    );
  }
}
