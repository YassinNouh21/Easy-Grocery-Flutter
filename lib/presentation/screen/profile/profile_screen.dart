import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/profile/widget/profile_option.dart';
import 'package:quick_grocery/presentation/screen/profile/widget/profile_show.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';

import '../../shared/app_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  final List<Map<String, String>> icons = [
    Map<String, String>.from({
      'iconPath': AssetsManager.callProfile,
      'text': 'talk_to_support',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.editProfile,
      'text': 'edit_profile',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.locationProfile,
      'text': 'my_address',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.logoutProfile,
      'text': 'logout',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.shoppingCartProfile,
      'text': 'my_orders',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.chatProfile,
      'text': 'chat_with_us',
    }),
    Map<String, String>.from({
      'iconPath': AssetsManager.mailProfile,
      'text': 'mail_us',
    }),
  ];

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding:  EdgeInsets.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.translate('profile')!,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
               SizedBox(height: 16.h),
              ProfileShower(
                iconPath: AssetsManager.callProfile,
                name: 'John Doe',
                phoneNumber: '+1 234 567 89',
                onPressed: () {},
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    final iconData = icons[index];
                    debugPrint('iconData: $iconData');
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      child: Column(
                        children: [
                          ProfileOption(
                            iconPath: iconData['iconPath']!,
                            text: AppLocalizations.of(context)!
                                .translate(iconData['text']!)!,
                            onPressed: () {},
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
