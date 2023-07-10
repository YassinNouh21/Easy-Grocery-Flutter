import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class PaymentMethodButton extends StatelessWidget {
  final VoidCallback onPressed;
  const PaymentMethodButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Container(
        width: 350.w,
        height: 85.h,
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        decoration: ShapeDecoration(
          color: const Color.fromRGBO(54, 179, 126, 0.14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ColorManager.btnPrimary,
              radius: 26.r,
              child: Icon(Icons.credit_card_outlined,
                  color: Colors.white, size: 23.r),
            ),
            SizedBox(width: 16.w),
            Flexible(
              child: Text(
                AppLocalizations.of(context)!
                    .translate('tap_to_select_payment_method')!,
                style: Theme.of(context).textTheme.bodyLarge!,
                maxLines: 2,
                overflow: TextOverflow.visible,
              ),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.black, size: 23.r),
          ],
        ),
      ),
    );
  }
}
