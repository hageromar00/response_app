import 'package:flutter/material.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/list_tran_history.dart';

class Tran extends StatelessWidget {
  const Tran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TranHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: Style.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),
        ),
        ListTranHistory()
        //TranHistory()
      ],
    );
  }
}

class TranHeader extends StatelessWidget {
  const TranHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const  Text(
          'Transaction History',
          style: Style.styleSemiBold20,
        ),
        Text(
          'See all',
          style: Style.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
