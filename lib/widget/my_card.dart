import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response_application/utils/app_images.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/custom_dot.dart';
import 'package:response_application/widget/list_card.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pagecontrol;
  int currindex = 0;
  @override
  void initState() {
    pagecontrol = PageController();
    // pagecontrol = PageController(viewportFraction: 0.9);
    pagecontrol.addListener(() {
      currindex = pagecontrol.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'My Card',
          style: Style.styleSemiBold20.copyWith(color: const Color(0xFF064061)),
        ),
        const SizedBox(
          height: 10,
        ),
        ListCard(pagecontoll: pagecontrol),
        const SizedBox(
          height: 10,
        ),
        CustomDotList(CurrIndx: currindex)
        //  CustomDot(),
      ],
    );
  }
}

class MaskGroup extends StatelessWidget {
  const MaskGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 400 / 240,
      child: Container(
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          image:
              const DecorationImage(image: AssetImage(Assets.imagesMaskgroup)),
          color: const Color(0xFF4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: 8, right: 20, left: 20),
              title: Text(
                'Name card',
                style: Style.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi',
                  style: Style.styleMedium20.copyWith(color: Colors.white)),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Style.styleSemiBold20.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: Style.styleRegular16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 26),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
