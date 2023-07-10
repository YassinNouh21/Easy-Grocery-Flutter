import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class HomeScreenDeliveryLocation extends StatelessWidget {
  final String address;
  const HomeScreenDeliveryLocation({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        AppLocalizations.of(context)!.translate('your_location')!,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      subtitle: Text(
        address,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: ColorManager.btnPrimary,
        child: IconButton(
          iconSize: 28,
          onPressed: () {},
          icon: const Icon(Icons.location_on_sharp),
          color: Colors.white,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
