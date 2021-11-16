import 'package:device_preview/device_preview.dart';
import 'package:facebook_flutter/pages/home.dart';
import 'package:facebook_flutter/pages/main_navigation.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: PalletColors.scaffold),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        title: "Facebook",
        debugShowCheckedModeBanner: false,
        home: const MainNavigation(),
      ),
    ),
  );
}
