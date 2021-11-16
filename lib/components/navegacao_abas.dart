import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';

class NavigationAbas extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final bool indicatorBottom;

  const NavigationAbas(
      {Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap,
      this.indicatorBottom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator:  BoxDecoration(
          border: indicatorBottom ?  const Border(
            top: BorderSide(color: PalletColors.azulFaceFacebook, width: 3),
          ): const Border(
            bottom: BorderSide(color: PalletColors.azulFaceFacebook, width: 3),
          ) ,
        ),
        tabs: icones
            .asMap()
            .map((index, icone) {
              return MapEntry(
                index,
                Tab(
                  icon: Icon(
                    icone,
                    color: indiceAbaSelecionada == index
                        ? PalletColors.azulFaceFacebook
                        : Colors.black54,
                    size: 30,
                  ),
                ),
              );
            })
            .values
            .toList());
  }
}
