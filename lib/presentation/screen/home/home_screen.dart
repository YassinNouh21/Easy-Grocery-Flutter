import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/screen/cart/widget/delivery_location.dart';
import 'package:quick_grocery/presentation/screen/home/widget/delivery_location.dart';
import 'package:quick_grocery/presentation/screen/home/widget/offer_banner_slider.dart';
import 'package:quick_grocery/presentation/screen/home/widget/product_container.dart';
import 'package:quick_grocery/presentation/screen/home/widget/search_bar.dart';
import 'package:quick_grocery/presentation/screen/home/widget/today_deal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0.r),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Easy Grocery',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF37474F),
                        ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    iconSize: 32.r,
                    icon: const Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              // todo: add delivery location
              const HomeScreenDeliveryLocation(
                  address: 'No 1, Jalan 1, Taman 1, 12345, Selangor'),
              SizedBox(height: 30.h),

              HomeSearchBar(
                onTap: () => (),
              ),
              SizedBox(height: 30.h),
              const OfferBannerSlider(
                imageUrls: [
                  'https://source.unsplash.com/user/c_v_r/400x300',
                  'https://source.unsplash.com/user/c_v_r/600x300',
                  'https://source.unsplash.com/user/c_v_r/400x200',
                ],
              ),
              Row(
                children: [
                  ProductContainer(
                    imgUrl: "https://source.unsplash.com/user/c_v_r/400x300",
                    price: '30',
                    title: 'Product Name',
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              TodayDeal(
                proudcts: [
                  ProductContainer(
                    imgUrl: "https://source.unsplash.com/user/c_v_r/400x300",
                    price: '30',
                    title: 'Product Name',
                    onPressed: () {},
                  ),
                  ProductContainer(
                    imgUrl: "https://source.unsplash.com/user/c_v_r/400x300",
                    price: '30',
                    title: 'Product Name',
                    onPressed: () {},
                  ),
                  ProductContainer(
                    imgUrl: "https://source.unsplash.com/user/c_v_r/400x300",
                    price: '30',
                    title: 'Product Name',
                    onPressed: () {},
                  ),
                  ProductContainer(
                    imgUrl: "https://source.unsplash.com/user/c_v_r/400x300",
                    price: '30',
                    title: 'Product Name',
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
