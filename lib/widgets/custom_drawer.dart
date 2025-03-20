import 'package:flutter/material.dart';

import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item_list_view.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemlistView()
        ],
      ),
    );
  }
}
