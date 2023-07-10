import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/screen/profile/screens/edit_profile/widget/profile_text_field.dart';
import 'package:quick_grocery/presentation/screen/profile/screens/edit_profile/widget/profile_viewer.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';
import 'package:quick_grocery/presentation/shared/app_button.dart';
import 'package:quick_grocery/presentation/shared/app_navigation_bar.dart';

import '../../../../localization/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: AppAppBar(
            title: AppLocalizations.of(context)!.translate('edit_profile')!),
      ),
      floatingActionButton: AppButton(
        onPressed: () {},
        text: AppLocalizations.of(context)!.translate('save')!,
        icon: Icons.save,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              // todo: add user url photo
              ProfilePreviwer(
                  // imgUrl: ,
                  ),
              SizedBox(height: 30.h),

              ProfileTextField(
                labelText:
                    AppLocalizations.of(context)!.translate('edit_address')!,
                initialValue: 'Mohamed',
                isObscure: true,
                prefixIcon: Icons.account_circle_outlined,
              ),
              SizedBox(height: 16.h),
              ProfileTextField(
                labelText: AppLocalizations.of(context)!.translate('password')!,
                initialValue: 'Mohamed',
                isObscure: false,
                isSuffixIcon: true,
                prefixIcon: Icons.lock_outline,
              ),
              SizedBox(height: 16.h),
              ProfileTextField(
                labelText:
                    AppLocalizations.of(context)!.translate('phone_number')!,
                initialValue: 'Mohamed',
                isObscure: false,
                prefixIcon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
