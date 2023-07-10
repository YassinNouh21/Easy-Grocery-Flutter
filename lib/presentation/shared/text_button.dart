import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: ColorManager.btnSecondary,
            ),
      ),
    );
  }
}
