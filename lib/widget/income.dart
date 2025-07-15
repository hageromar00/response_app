import 'package:flutter/material.dart';
import 'package:response_application/widget/all_expanse_header.dart';
import 'package:response_application/widget/custom_container.dart';
import 'package:response_application/widget/income_design.dart';
import 'package:response_application/widget/income_section.dart';

class INcomeChart extends StatelessWidget {
  const INcomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
              children: [
        AllExpanseHeader(text: 'Income'),
        SizedBox(
          height: 10,
        ),
        
        ChartSections()
              ],
            ));
  }
}

class ChartSections extends StatelessWidget {
  const ChartSections({super.key});

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return 
    wid>1282 || wid<=900 ? const Row(children: [
         ListIncomeDetails(),
         SizedBox(width: 10,),
        Expanded(child: IncomeDesign())
    ],)
    :
    const ChartDesign2();
  }
}
