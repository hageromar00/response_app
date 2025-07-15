import 'package:flutter/material.dart';
import 'package:response_application/model/user.dart';
import 'package:response_application/utils/app_images.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/user_info.dart';

class LastTran extends StatelessWidget {
  const LastTran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Style.styleMedium16.copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        ListTran()
      ],
    );
  }
}

class ListTran extends StatelessWidget {
  const ListTran({super.key});
  static const item = [
    UserModel(
        image: Assets.imagesFrame2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserModel(
      image: Assets.imagesFrame,
      title: 'Madrani ',
      subtitle: 'Madr',
    ),
    UserModel(
        image: Assets.imagesFrame2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
        child: Row(
          children: item.map((e) => IntrinsicWidth(child: UserINfo(model: e))).toList(),
        ));
  }
}
