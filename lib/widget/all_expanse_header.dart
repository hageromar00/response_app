import 'package:flutter/material.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/custom_container.dart';

class AllExpanseHeader extends StatelessWidget {
  const AllExpanseHeader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Row(
      children: [
        Text(
          text,
          style: Style.styleSemiBold18.copyWith(color: Color(0xFF064061)),
        ),
        const Expanded(child: SizedBox()),
        const CustomMonth()
      ],
    ));
  }
}

class CustomMonth extends StatelessWidget {
  const CustomMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: Style.styleRegular16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 12,
          ),
          Transform.rotate(
            angle: -1.5789,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF064061),
            ),
          )
        ],
      ),
    );
  }
}
