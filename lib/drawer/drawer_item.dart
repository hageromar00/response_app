import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response_application/model/drawer_model.dart';
import 'package:response_application/utils/style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.active, required this.model});
  final bool active;
  final DrawerModel model;
  @override
  Widget build(BuildContext context) {
    return active
        ? ActiveItemDrawer(
            model: model,
          )
        : InActiveItemDrawer(
            model: model,
          );
  }
}

class ActiveItemDrawer extends StatelessWidget {
  const ActiveItemDrawer({super.key, required this.model});
  final DrawerModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          model.title,
          style: Style.styleRegular16,
        ),
      ),
      trailing: Container(
        width: 3,
        height: 29,
        color: Colors.blue,
      ),
    );
  }
}

class InActiveItemDrawer extends StatelessWidget {
  const InActiveItemDrawer({super.key, required this.model});
  final DrawerModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: Style.styleRegular16,
      ),
    );
  }
}
