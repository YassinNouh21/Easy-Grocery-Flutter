import 'package:flutter/material.dart';

class PriceColumn extends StatelessWidget {
  final String title;
  final double price;
  final bool isBold;
  const PriceColumn({
    Key? key,
    required this.title,
    required this.price,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: isBold ? FontWeight.w800 : FontWeight.normal,
                )),
        Text('\$$price',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
