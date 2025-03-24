import 'package:flutter/material.dart';

import 'package:dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(child: MyCardsAndTransctionHistorySection()),
      ],
    );
  }
}
