import 'package:flutter/material.dart';

class AdaptUi extends StatelessWidget {
  const AdaptUi(
      {super.key,
      required this.desktop,
      required this.mobile,
      required this.tablet});
  final WidgetBuilder mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth < 501) {
        return mobile(context);
      }
      if (constrain.maxWidth < 900) {
        return tablet(context);
      } else {
        return desktop(context);
      }
    });
  }
}
