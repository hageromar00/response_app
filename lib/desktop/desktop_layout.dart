import 'package:flutter/material.dart';
import 'package:response_application/drawer/drawer.dart';
import 'package:response_application/widget/all_quick.dart';
import 'package:response_application/widget/income.dart';
import 'package:response_application/widget/section_three.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);//1280
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: AllExpandAndQuick()),
                      Expanded(
                          child: SizedBox(
                        width: 24,
                        child: Column(
                          children: [
                            SectionThree(),
                            SizedBox(
                              height: 10,
                            ),
                             INcomeChart()
                          ],
                        ),
                      ))
                    ],
                  ),
                )
                // SliverToBoxAdapter(child: Expanded(flex: 2,child: AllExpandAndQuick()) ,),
                //  SizedBox(width: 24,child: Expanded(flex: 1,child: MyCard()))
              ],
            )),
      ],
    );
  }
}
