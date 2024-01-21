import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sigv/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  {

  int selectedIndex = 0;
  final pages = [
    const Center(
      child: Body(),
    ),
    const Center(
      child: Text('Buscar'),
    ),
    const Center(
      child: Text('Perfil'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      // leading: IconButton(
      //   icon: ColorFiltered(
      //     colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
      //     child: SvgPicture.asset("assets/icons/back.svg"),
      //   ),
      //   onPressed: () {},
      // ),
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

  BottomNavigationBar bottomNavigationBar(){
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (index) => setState(() => selectedIndex = index),
    );
  }
}



