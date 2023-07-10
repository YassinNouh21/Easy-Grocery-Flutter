import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget {
  final String title;
  const AppAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
