import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final IconData icon;
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = ColorManager.btnPrimary,
    this.icon = Icons.arrow_forward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(340.w, 55.h),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Container()),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
          Expanded(child: Container()),
          Icon(icon,
              color: Colors.white, size: 25.0.w), // Icon widget on the right
        ],
      ),
    );
  }
}
