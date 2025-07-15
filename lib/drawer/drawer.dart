import 'package:flutter/material.dart';
import 'package:response_application/drawer/drawer_item.dart';
import 'package:response_application/drawer/list_darwer.dart';
import 'package:response_application/model/drawer_model.dart';
import 'package:response_application/model/user.dart';
import 'package:response_application/utils/app_images.dart';
import 'package:response_application/widget/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: Colors.white,
      child:const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserINfo(
                model: UserModel(
                    image: Assets.imagesFrame2,
                    subtitle: 'Lekan Okeowo',
                    title: 'demo@gmail.com')),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
           DrawerList(),
           //SizedBox(height: 20,),
            SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
           SliverFillRemaining(
             hasScrollBody: false,
            child: Column(
              children: [
                InActiveItemDrawer(
                  model: DrawerModel(
                    image: Assets.imagesSetting2,
                    title: 'Setting system',
                  ),
                ),
                InActiveItemDrawer(
                  model: DrawerModel(
                    image: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
