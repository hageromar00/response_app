import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:response_application/utils/style.dart';

class IncomeDesign extends StatefulWidget {
  const IncomeDesign({super.key});

  @override
  State<IncomeDesign> createState() => _IncomeDesignState();
}

class _IncomeDesignState extends State<IncomeDesign> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, p1) {
              touchedIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
                color: Color(0xFF4EB7F2),
                radius: touchedIndex == 0 ? 50 : 40,
                showTitle: false),
            PieChartSectionData(
                color: Color(0xFFE2DECD),
                radius: touchedIndex == 1 ? 50 : 40,
                showTitle: false),
            PieChartSectionData(
                color: Color(0xFF208CC8),
                radius: touchedIndex == 2 ? 50 : 40,
                showTitle: false),
            PieChartSectionData(
                color: Color(0xFF064061),
                radius: touchedIndex == 3 ? 50 : 40,
                showTitle: false),
          ],
        ),
      ),
    );
  }
}

class ChartDesign2 extends StatefulWidget {
  const ChartDesign2({super.key});

  @override
  State<ChartDesign2> createState() => _ChartDesign2State();
}

class _ChartDesign2State extends State<ChartDesign2> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
            pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, p1) {
                touchedIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
                setState(() {});
              },
            ),
            sectionsSpace: 0,
            sections: [
              PieChartSectionData(
             //   titlePositionPercentageOffset: touchedIndex == 0 ? 1.3 : null,
                title: touchedIndex == 0 ? 'Design service' : '40%',
                 titleStyle: Style.styleMedium16
                .copyWith(color: touchedIndex == 0 ? null : Colors.white),
            radius: touchedIndex == 0 ? 60 : 50,
            color: Color(0xFF4EB7F2),
            value: 40,
              ),
              PieChartSectionData(
                 color: Color(0xFFE2DECD),
                title: touchedIndex == 1 ? 'Product royalti' : '20%',
                 titleStyle: Style.styleMedium16
                .copyWith(color: touchedIndex == 1 ? null : Colors.white),
            radius: touchedIndex == 1 ? 60 : 50,
            value: 40,
              ),
              PieChartSectionData(
                // titlePositionPercentageOffset: touchedIndex==2 ?1.5: null,
                  color: Color(0xFF064061),
                title: touchedIndex == 2 ? 'Design product' : '25%',
                 titleStyle: Style.styleMedium16
                .copyWith(color: touchedIndex == 2 ? null : Colors.white),
            radius: touchedIndex == 2 ? 60 : 50,
            value: 40,
              ),
              PieChartSectionData(
                color: Color(0xFF208CC8),
                title: touchedIndex == 3 ? 'other' : '22%',
                 titleStyle: Style.styleMedium16
                .copyWith(color: touchedIndex == 3 ? null : Colors.white),
            radius: touchedIndex == 3 ? 60 : 50,
            value: 40,
              ),
            ]),
      ),
    );
  }
}
