import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          const Icon(
            Icons.phone,
            color: Colors.black,
          ),
          SizedBox(width: 8.0.w),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText:
                    AppLocalizations.of(context)!.translate('phone_number')!,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
