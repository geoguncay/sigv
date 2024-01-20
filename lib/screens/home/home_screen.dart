import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sigv/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.yellow,
      elevation: 0,
      leading: IconButton(
        icon: ColorFiltered(
          colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
          child: SvgPicture.asset("assets/icons/back.svg"),
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            child: SvgPicture.asset("assets/icons/cart.svg"),
          ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}

