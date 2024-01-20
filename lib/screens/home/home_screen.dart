import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sigv/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
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

