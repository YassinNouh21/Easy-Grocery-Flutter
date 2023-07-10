import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class SuggestedProduct extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double price;
  final double offeredPrice;
  final bool hasDiscount;
  final VoidCallback onTap;

  const SuggestedProduct({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.offeredPrice,
    required this.hasDiscount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 115.r,
            height: 115.r,
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                SizedBox(height: 8.h),
                Text('\$${price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          decoration:
                              hasDiscount ? TextDecoration.lineThrough : null,
                        )),
                if (hasDiscount)
                  Text('\$${offeredPrice.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ColorManager.btnSecondary,
                            fontWeight: FontWeight.w600,
                          )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
