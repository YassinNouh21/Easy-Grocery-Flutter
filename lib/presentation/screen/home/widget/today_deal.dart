import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/home/widget/product_container.dart';

@immutable
class TodayDeal extends StatelessWidget {
  List<ProductContainer> proudcts;
  TodayDeal({super.key, required this.proudcts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.translate('today_deals')!,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return proudcts[index];
            },
          ),
        ),
      ],
    );
  }
}
