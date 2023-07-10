import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/theme/color_manager.dart';

class ProductImagePreviewer extends StatefulWidget {
  final List<String> imageUrls;

  const ProductImagePreviewer({Key? key, required this.imageUrls})
      : super(key: key);

  @override
  _ProductImagePreviewerState createState() => _ProductImagePreviewerState();
}

class _ProductImagePreviewerState extends State<ProductImagePreviewer> {
  late String mainImageUrl;

  @override
  void initState() {
    super.initState();
    mainImageUrl = widget.imageUrls[0];
  }

  void updateMainImage(String imageUrl) {
    setState(() {
      mainImageUrl = imageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300.r,
          height: 250.r,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              mainImageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 30.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              widget.imageUrls.length,
              (index) => GestureDetector(
                onTap: () => updateMainImage(widget.imageUrls[index]),
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 70.r,
                  height: 70.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: ColorManager.btnPrimary,
                      width: 2,
                      style: mainImageUrl == widget.imageUrls[index]
                          ? BorderStyle.solid
                          : BorderStyle.none,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
