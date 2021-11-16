import 'package:flutter/material.dart';

class NavigationAbasDesktop extends StatelessWidget {
  const NavigationAbasDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0,2))
        ]
      ),
    );
  }
}
