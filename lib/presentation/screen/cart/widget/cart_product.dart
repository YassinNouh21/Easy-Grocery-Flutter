import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class CartProduct extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final double price;
  final double offeredPrice;
  final bool hasDiscount;
  final VoidCallback onTap;
  int quantity;

  CartProduct({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.offeredPrice,
    required this.hasDiscount,
    required this.onTap,
    required this.quantity,
  }) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.r,
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
                image: NetworkImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '\$${widget.price.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        decoration: widget.hasDiscount
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                ),
                if (widget.hasDiscount)
                  Text(
                    '\$${widget.offeredPrice.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorManager.btnSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Row(
                children: [
                  Container(
                    width: 35.r,
                    height: 35.r,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFF5552),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    child: InkWell(
                      child: const Icon(Icons.remove, color: Colors.white),
                      onTap: () {
                        setState(() {
                          if (widget.quantity > 0) {
                            widget.quantity--;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    widget.quantity.toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    width: 35.r,
                    height: 35.r,
                    decoration: ShapeDecoration(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    child: InkWell(
                      child: const Icon(Icons.add, color: Colors.white),
                      onTap: () {
                        setState(() {
                          widget.quantity++;
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
