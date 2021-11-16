
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';

class NavigationAbas extends StatelessWidget {

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;

  const NavigationAbas({
    Key? key,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: PalletColors.azulFaceFacebook,
              width: 3
            ),
          )
        ),
        tabs: icones.asMap().map((indice, icone){
          return MapEntry(indice, Tab(
            icon: Icon(
              icone,
              color: indiceAbaSelecionada == indice
                  ? PalletColors.azulFaceFacebook
                  : Colors.black54 ,
              size: 30,
            ),
          ));
        }).values.toList()
    );
  }
}
