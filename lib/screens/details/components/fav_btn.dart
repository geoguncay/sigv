import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sigv/screens/details/components/car_counter.dart';

class CounterWithFavBtn extends StatelessWidget {

  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}