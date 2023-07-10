import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class ProductContainer extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onPressed;
  final String title;
  final String price;
  const ProductContainer(
      {super.key,
      required this.imgUrl,
      required this.onPressed,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 165.r,
        height: 210.r,
        padding: EdgeInsets.all(12.r),
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 88,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80.r,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            // set constain on the title
            Text(title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    // color: const Color.fromARGB(1, 91, 132, 255),
                    color: Colors.amberAccent),
                overflow: TextOverflow.ellipsis,
                maxLines: 1),
            SizedBox(height: 5.h), Text(price),
          ],
        ),
      ),
    );
  }
}
