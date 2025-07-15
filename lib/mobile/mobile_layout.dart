import 'package:flutter/material.dart';
import 'package:response_application/widget/all_expanse_header.dart';
import 'package:response_application/widget/all_quick.dart';
import 'package:response_application/widget/income.dart';
import 'package:response_application/widget/income_design.dart';
import 'package:response_application/widget/income_section.dart';
import 'package:response_application/widget/section_three.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpandAndQuick(),
              SizedBox(
                height: 20,
              ),
              SectionThree(),
              SizedBox(
                height: 20,
              ),
              // AllExpanseHeader(text: 'Income'),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   children: [
              //     ListIncomeDetails(),
              //     SizedBox(
              //       width: 30,
              //     ),
              //     Expanded(child: IncomeDesign())
              //   ],
              // )
               INcomeChart()
        ],
      ),
    );
    // const CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(
    //       child: Column(
    //         children: [
    //           AllExpandAndQuick(),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           SectionThree(),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           INcomeChart()
    //         ],
    //       ),
    //       // AllExpandAndQuick()
    //     ),
    //     // SizedBox(
    //     //   height: 10,
    //     // ),
    //     // SectionThree(),
    //     // SizedBox(
    //     //   height: 10,
    //     // ),
    //     // INcomeChart()
    //   ],
    // );
  }
}
