import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedIndex: _selectedIndex,
      destinations: <NavigationDestination>[
        NavigationDestination(
          selectedIcon: const Icon(Icons.home),
          icon: const Icon(Icons.home_outlined),
          label: AppLocalizations.of(context)!.translate('home')!,
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.category),
          icon: const Icon(Icons.category_outlined),
          label: AppLocalizations.of(context)!.translate('category')!,
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.shopping_bag_rounded),
          icon: const Icon(Icons.shopping_bag_outlined),
          label: AppLocalizations.of(context)!.translate('my_bag')!,
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.person_rounded),
          icon: const Icon(Icons.person_2_outlined),
          label: AppLocalizations.of(context)!.translate('profile')!,
        ),
      ],
    );
  }
}
