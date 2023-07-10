import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/shared/app_navigation_bar.dart';

import '../cart/cart_screen.dart';
import '../home/home_screen.dart';
import '../profile/screens/edit_profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _screens = [
    const HomeScreen(),
    // const (),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: NavigationBar(
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
        ),
      ),
    );
  }
}
