import 'package:facebook_flutter/components/navegacao_abas.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'home.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final List<Widget> _telas = [
    const Home(),
    const Scaffold(
      backgroundColor: Colors.green,
    ),
    const Scaffold(
      backgroundColor: Colors.yellow,
    ),
    const Scaffold(
      backgroundColor: Colors.purple,
    ),
    const Scaffold(
      backgroundColor: Colors.black54,
    ),
    const Scaffold(
      backgroundColor: Colors.orange,
    ),
  ];

  final List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu,
  ];

  int _indiceAbaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icones.length,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: _telas,
          ),
          bottomNavigationBar: NavigationAbas(
            icones: _icones,
            indiceAbaSelecionada: _indiceAbaSelecionada,
            onTap: (index) {
              setState(() {
                _indiceAbaSelecionada = index;
              });
            },
          ),
        ));
  }
}
