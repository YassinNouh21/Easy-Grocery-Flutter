import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/assets_manager.dart';

class ProfileOption extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback? onPressed;

  const ProfileOption({
    Key? key,
    required this.iconPath,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: SvgPicture.asset(
        iconPath,
        width: 24.r,
        height: 24.r,
      ),
      title: Text(text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              )),
    );
  }
}
