import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/order/history_screen.dart';
import 'package:quick_grocery/presentation/screen/order/ongoing_screen.dart';

import 'package:quick_grocery/presentation/theme/color_manager.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.translate('orders')!,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            bottom: TabBar(
              indicatorWeight: 2, // Set the line thickness
              indicatorSize: TabBarIndicatorSize.tab,

              labelColor: ColorManager.btnPrimary,
              indicatorColor: ColorManager.btnPrimary, // Set the line color
              tabs: [
                Tab(
                  text: AppLocalizations.of(context)!.translate('ongoing')!,
                ),
                Tab(text: AppLocalizations.of(context)!.translate('history')!),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OnGoingScreen(),
              HistoryScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
