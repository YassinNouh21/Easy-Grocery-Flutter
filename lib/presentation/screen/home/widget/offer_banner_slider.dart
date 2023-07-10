import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class OfferBannerSlider extends StatefulWidget {
  final List<String> imageUrls;

  const OfferBannerSlider({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  @override
  State<OfferBannerSlider> createState() => _OfferBannerSliderState();
}

class _OfferBannerSliderState extends State<OfferBannerSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.h,
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageUrls.map((imageUrl) {
            int index = widget.imageUrls.indexOf(imageUrl);
            return Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? ColorManager.btnPrimary
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
