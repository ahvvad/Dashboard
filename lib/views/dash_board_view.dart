import 'package:dashboard/widgets/adaptive_layout_widgets.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 880
          ? AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xFF4EB7F2),
                ),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < 880 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: DashboardMobileLayout(),
        ),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
