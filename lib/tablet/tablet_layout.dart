import 'package:flutter/material.dart';
import 'package:response_application/drawer/drawer.dart';
import 'package:response_application/mobile/mobile_layout.dart';
import 'package:response_application/widget/all_expanse_header.dart';
import 'package:response_application/widget/income_design.dart';
import 'package:response_application/widget/income_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child:MobileLayout(),
          //  SingleChildScrollView(
          //     child: Column(
          //   children: [
          //     MobileLayout(),
          //     // AllExpanseHeader(text: 'Income'),
          //     // Row(
          //     //   children: [
          //     //     ListIncomeDetails(),
          //     //     SizedBox(
          //     //       width: 30,
          //     //     ),
          //     //     Expanded(child: IncomeDesign())
          //     //   ],
          //     // )
          //   ],
          // )),

          // ListIncomeDetails(),
          //      Column(
          //       children: [
          //         MobileLayout(),
          //         //AllExpanseHeader(text: 'Income'),
          // //          Row(children: [
          // //      ListIncomeDetails(),
          // //     //  SizedBox(width: 10,),
          // //     // IncomeDesign()
          // // ],)
          //       ],
          //     ),
        ),
      ],
    );
  }
}
