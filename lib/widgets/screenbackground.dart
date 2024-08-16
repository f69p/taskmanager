import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack (
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
              Assetsutils.backgroundsvg),
        ),
        child
      ],
    );
  }
}