import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';

class HomeSearchBar extends StatefulWidget {
  final VoidCallback onTap;
  const HomeSearchBar({super.key, required this.onTap});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: AppLocalizations.of(context)!.translate('search')!,
      // maxLength: 20,
      onTap: widget.onTap,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.search),
        fillColor: const Color.fromRGBO(240, 241, 242, 1),
        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
