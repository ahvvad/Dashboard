import 'package:dashboard/widgets/all_expeensess.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 30),
              AllExpeensess(),
              SizedBox(height: 24),
              QuickInvoive(),
            ],
          ),
        ),
      ],
    );
  }
}
