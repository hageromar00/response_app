import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:response_application/widget/my_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.pagecontoll});
  final PageController pagecontoll;

  @override
  Widget build(BuildContext context) {
    return 
     ExpandablePageView(
      scrollDirection: Axis.horizontal,
      controller: pagecontoll,
      children: List.generate(3, (index) =>const MaskGroup()),
    );
    //  SizedBox(
    //   height: 220, // ارتفاع أكبر شوية لو الكارت كبير
    //   child: PageView.builder(
    //      physics: const BouncingScrollPhysics(),
    //     controller: pagecontoll,
    //     itemCount: 3,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         margin: const EdgeInsets.symmetric(horizontal: 8), // المساحة الجانبية
    //         child: const MaskGroup(),
    //       );
    //     },
    //   ),
    // );

    // return
    // SizedBox(
    //   height: 200, // أو نفس الارتفاع اللي يناسب التصميم
    //   child: PageView.builder(
    //     controller: pagecontoll,
    //     itemCount: 3,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //         child: const MaskGroup(),
    //       );
    //     },
    //   ),
    //   // PageView(
    //   //   controller: pagecontoll,
    //   //   children: List.generate(3, (index) => const MaskGroup()),
    //   // ),
    // );
    // //  ExpandablePageView(
    //   controller: pagecontoll,
    //   children: List.generate(3, (index) => MaskGroup()),
    // );
  }
}
