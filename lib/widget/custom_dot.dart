import 'package:flutter/material.dart';

class CustomDotList extends StatelessWidget {
  const CustomDotList({super.key, required this.CurrIndx});
  final int CurrIndx;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (indx) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDot(Active: CurrIndx == indx),
              )),
    );
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.Active});
  final bool Active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      width: Active ? 20 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: Active ? const Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
