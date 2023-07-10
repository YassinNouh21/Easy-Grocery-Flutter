import 'package:flutter/material.dart';

class ProfileShower extends StatelessWidget {
  final String iconPath;
  final String name;
  final String phoneNumber;
  final VoidCallback onPressed;

  const ProfileShower(
      {super.key,
      required this.iconPath,
      required this.name,
      required this.phoneNumber,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Image.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      subtitle: Text(
        phoneNumber,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w300,
            ),
      ),
    );
  }
}
