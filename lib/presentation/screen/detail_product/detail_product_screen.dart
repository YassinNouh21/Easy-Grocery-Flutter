import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/detail_product/widget/product_image_previewer.dart';
import 'package:quick_grocery/presentation/screen/detail_product/widget/suggested_product.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';
import 'package:quick_grocery/presentation/shared/app_button.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: AppAppBar(
          title: AppLocalizations.of(context)!.translate('product_details')!,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(child: Container()),
                  const ProductImagePreviewer(
                    imageUrls: [
                      'https://source.unsplash.com/user/c_v_r/400x300',
                      'https://source.unsplash.com/user/c_v_r/800x300',
                      'https://source.unsplash.com/user/c_v_r/500x400',
                      'https://source.unsplash.com/user/c_v_r/900x800',
                    ],
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(height: 30.h),
              // todo:: add product name from bloc
              Text(
                'Product Name',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Text(
                    // todo:: add product size from bloc
                    '1 KG',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    // todo:: add product size from bloc

                    '1.99\$',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: ColorManager.btnPrimary,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(AppLocalizations.of(context)!.translate('also_check')!,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      )),

              SizedBox(height: 30.h),
              SuggestedProduct(
                hasDiscount: true,
                imageUrl: 'https://source.unsplash.com/user/c_v_r/400x300',
                offeredPrice: 1.99,
                onTap: () => (),
                price: 300,
                productName: 'Product Name',
              ),
              SuggestedProduct(
                hasDiscount: true,
                imageUrl: 'https://source.unsplash.com/user/c_v_r/400x300',
                offeredPrice: 1.99,
                onTap: () => (),
                price: 300,
                productName: 'Product Name',
              ),
              SuggestedProduct(
                hasDiscount: true,
                imageUrl: 'https://source.unsplash.com/user/c_v_r/400x300',
                offeredPrice: 1.99,
                onTap: () => (),
                price: 300,
                productName: 'Product Name',
              ),
              SizedBox(height: 30.h),
              AppButton(
                text: AppLocalizations.of(context)!.translate('add_to_cartt')!,
                onPressed: () {},
                color: ColorManager.btnPrimary,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    ));
  }
}
