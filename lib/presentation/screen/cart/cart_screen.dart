import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/cart_product.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/delivery_location.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/payment_method_button.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/price_column.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/time_slot_grid.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';
import 'package:quick_grocery/presentation/shared/app_button.dart';

import '../../shared/secondary_app_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: AppAppBar(
              title: AppLocalizations.of(context)!.translate('my_cart')!),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.translate('product')!,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 25.h),
              CartProduct(
                quantity: 2,
                hasDiscount: true,
                imageUrl: 'https://source.unsplash.com/user/c_v_r/400x300',
                offeredPrice: 1.99,
                onTap: () => (),
                price: 300,
                productName: 'Product Name',
              ),
              SizedBox(height: 20.h),
              SecondaryAppButton(
                color: Color(0xFFe3f4ed),
                onPressed: () => (),
                text: AppLocalizations.of(context)!.translate('add_more')!,
              ),
              SizedBox(height: 30.h),
              Text(
                AppLocalizations.of(context)!.translate('expected')!,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                height: 190.h,
                child: TimeSlotGrid(),
              ),
              SizedBox(height: 30.h),

              // todo: add delivery location
              DeliveryLocation(
                address: '123, Lorem Ipsum, Dolor Sit Amet',
              ),
              SizedBox(height: 40.h),
              Column(
                children: [
                  PriceColumn(
                    price: 20,
                    title: AppLocalizations.of(context)!.translate('subtotal')!,
                  ),
                  SizedBox(height: 16.h),
                  PriceColumn(
                    price: 20,
                    title: AppLocalizations.of(context)!
                        .translate('delivery_charge')!,
                  ),
                  SizedBox(height: 16.h),
                  PriceColumn(
                    price: 20,
                    isBold: true,
                    title: AppLocalizations.of(context)!.translate('total')!,
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              PaymentMethodButton(
                onPressed: () {},
              ),
              SizedBox(height: 30.h),
              AppButton(
                onPressed: () {},
                text: AppLocalizations.of(context)!.translate('place_order')!,
                color: const Color(0xFF5EC401),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
