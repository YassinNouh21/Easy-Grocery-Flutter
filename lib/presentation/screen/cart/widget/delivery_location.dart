import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';

class DeliveryLocation extends StatelessWidget {
  final String address;
  const DeliveryLocation({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.translate('delivery')!,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                AppLocalizations.of(context)!.translate('change')!,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color(0xFF5EC401),
                    ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromRGBO(35, 108, 217, 0.12),
              radius: 26.r,
              child: Icon(Icons.location_on_outlined,
                  color: Colors.black, size: 23.r),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                address,
                style: Theme.of(context).textTheme.bodyLarge!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        )
      ],
    );
  }
}
