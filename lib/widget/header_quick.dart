import 'package:flutter/material.dart';
import 'package:response_application/utils/style.dart';

class HeaderQuick extends StatelessWidget {
  const HeaderQuick({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: Style.styleSemiBold20,
        ),
      const  Expanded(child: SizedBox()),
      const  IconPluss(),

        // Spacer(),
      ],
    );
  }
}

class IconPluss extends StatelessWidget {
  const IconPluss({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFF4EB7F2),
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Icon(
          Icons.add,
          color: Color(0xFF4EB7F2),
        ));
  }
}