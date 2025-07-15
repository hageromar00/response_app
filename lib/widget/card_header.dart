import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response_application/utils/app_images.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key, this.backcolor, this.imagecolor,required this.image});
  final Color? imagecolor, backcolor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: backcolor ?? Color(0xFFF1F1F1),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                  image,
                    colorFilter: ColorFilter.mode(
                        imagecolor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imagecolor == null ? Color(0xFF064061) : Colors.white,
            ))
      ],
    );
  }
}
