import 'package:flutter/material.dart';
import 'package:response_application/drawer/drawer_item.dart';
import 'package:response_application/model/drawer_model.dart';
import 'package:response_application/utils/app_images.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  final List<DrawerModel> item = const [
    DrawerModel(image: Assets.imagesCategory2, title: 'Dashboard'),
    DrawerModel(image: Assets.imagesConvertCard, title: 'My Transaction'),
    DrawerModel(image: Assets.imagesGraph, title: 'Statistics'),
    DrawerModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerModel(image: Assets.imagesChart2, title: 'My Investments'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: item.length,
        itemBuilder: (context, indx) {
          return GestureDetector(
            onTap: () {
              if (index != indx) {
                setState(() {
                  index = indx;
                });
              }
            },
            child: DrawerItem(
              model: item[indx],
              active: index == indx,
            ),
          );
        });
  }
}
