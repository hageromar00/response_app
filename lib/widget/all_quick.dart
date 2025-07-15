import 'package:flutter/material.dart';
import 'package:response_application/widget/all_expense.dart';
import 'package:response_application/widget/quick.dart';

class AllExpandAndQuick extends StatelessWidget {
  const AllExpandAndQuick({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpense(),
        SizedBox(
          height: 12,
        ),
        QuickInvoice()
      ],
    );
  }
}
