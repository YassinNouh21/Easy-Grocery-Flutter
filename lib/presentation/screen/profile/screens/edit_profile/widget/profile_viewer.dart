  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePreviwer extends StatelessWidget {
  final String imgUrl;
  const ProfilePreviwer({
    super.key,
    this.imgUrl =
        'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100.r,
      backgroundImage: Image.network(imgUrl).image,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: double.infinity),
          CircleAvatar(
            radius: 24.r,
            backgroundColor: const Color.fromRGBO(243, 122, 32, 1),
            child: IconButton(
              iconSize: 28.r,
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
