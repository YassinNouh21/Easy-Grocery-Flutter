import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotGrid extends StatefulWidget {
  @override
  _TimeSlotGridState createState() => _TimeSlotGridState();
}

class _TimeSlotGridState extends State<TimeSlotGrid> {
  int selectedSlotIndex = -1;

  @override
  Widget build(BuildContext context) {
    // todo: fix the timing
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      childAspectRatio: 103.w / 80.h,
      children: List.generate(6, (index) {
        int startHour = 8 + index;
        int endHour = 9 + index;
        bool isSelected = index == selectedSlotIndex;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedSlotIndex = index;
            });
          },
          child: Container(
            height: 10.h,
            decoration: ShapeDecoration(
              color: const Color(0xFFF0F1F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0),
                side: BorderSide(
                  color: isSelected ? Colors.green : Colors.transparent,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
              child: Text('$startHour AM - $endHour PM',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.green : Colors.black,
                      )),
            ),
          ),
        );
      }),
    );
  }
}
