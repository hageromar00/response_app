import 'package:flutter/material.dart';
import 'package:response_application/model/card_mpdel.dart';
import 'package:response_application/utils/app_images.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/all_expanse_header.dart';
import 'package:response_application/widget/card_header.dart';
import 'package:response_application/widget/custom_container.dart';
import 'package:response_application/widget/list_expense_item.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        AllExpanseHeader(
          text: 'All Expense',
        ),
        ListExpandItem()
      ],
    ));
  }
}

