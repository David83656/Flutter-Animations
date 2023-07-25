import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class CustomPaintWidgetP extends StatelessWidget {
  const CustomPaintWidgetP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height / 10),
      painter: BottomNavBarCustomPaint(),
    );
  }
}
