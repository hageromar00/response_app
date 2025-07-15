import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response_application/model/user.dart';
import 'package:response_application/utils/style.dart';

class UserINfo extends StatelessWidget {
  const UserINfo({super.key, required this.model});
  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: Text(
          model.title,
          style: Style.styleSemiBold16,
        ),
        subtitle: Text(
          model.subtitle,
          style: Style.styleRegular12,
        ),
      ),
    );
  }
}
