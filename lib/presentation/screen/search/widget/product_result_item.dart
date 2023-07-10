import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class ProductResultItem extends StatelessWidget {
  final String productPhoto;
  final String productText;
  final double originalPrice;
  final double offerPrice;
  final VoidCallback onAddToCart;

  const ProductResultItem({
    Key? key,
    required this.productPhoto,
    required this.productText,
    required this.originalPrice,
    required this.offerPrice,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        productPhoto,
        width: 80.r,
        height: 80.r,
        fit: BoxFit.cover,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productText),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        '\$${offerPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: ColorManager.btnSecondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${originalPrice.toStringAsFixed(2)} ',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  SizedBox(
                    width: 90.w,
                    height: 35.h,
                    child: ElevatedButton.icon(
                      onPressed: onAddToCart,
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 16.r,
                      ),
                      label: Text(
                        AppLocalizations.of(context)!.translate('add_to_cart')!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
