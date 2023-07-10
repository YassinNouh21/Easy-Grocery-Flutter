import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_grocery/presentation/shared/app_button.dart';
import 'package:quick_grocery/presentation/shared/text_button.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';

import '../../localization/app_localizations.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(AssetsManager.phone, height: 300.h),
                SizedBox(height: 40.h),
                Text(
                  AppLocalizations.of(context)!
                      .translate('enter_verification_code')!,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 40.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!
                            .translate('send_sms')!,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      // todo: add the phone number here
                      TextSpan(
                        text: '01XXXXXXXXXX',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Pinput(
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsRetrieverApi,
                    length: 4,
                    onChanged: print,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTextButton(
                      onPressed: () => {},
                      text: AppLocalizations.of(context)!
                          .translate('resend_otp')!,
                    ),
                    AppTextButton(
                      onPressed: () => {},
                      text: AppLocalizations.of(context)!
                          .translate('change_phone_number')!,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                AppButton(
                  onPressed: () => {},
                  text: AppLocalizations.of(context)!.translate('next')!,
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
