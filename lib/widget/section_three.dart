import 'package:flutter/material.dart';
import 'package:response_application/widget/custom_container.dart';
import 'package:response_application/widget/my_card.dart';
import 'package:response_application/widget/tran.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [MyCard(),
       Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        Tran()
      ],
    ));
  }
}
