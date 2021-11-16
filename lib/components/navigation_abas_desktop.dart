import 'package:facebook_flutter/components/bottom_image_profile.dart';
import 'package:facebook_flutter/components/image_profile.dart';
import 'package:facebook_flutter/components/navegacao_abas.dart';
import 'package:facebook_flutter/models/user.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';

class NavigationAbasDesktop extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final User user;

  const NavigationAbasDesktop(
      {Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap,
      required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                  color: PalletColors.azulFaceFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  letterSpacing: -1.2),
            ),
          ),
          Expanded(
            child: NavigationAbas(
                icones: icones,
                indiceAbaSelecionada: indiceAbaSelecionada,
                onTap: onTap),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonImageProfile(
                  user: user,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
