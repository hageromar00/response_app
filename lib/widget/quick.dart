import 'package:flutter/material.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/custom_container.dart';
import 'package:response_application/widget/header_quick.dart';
import 'package:response_application/widget/last_tran.dart';
import 'package:response_application/widget/text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderQuick(txt: 'Quick Invoice'),
          SizedBox(
            height: 10,
          ),
          LastTran(),
           Divider(
          height: 20,
          color: Color(0xFFF1F1F1),
        ),
        TextFieldForm()
        ],
      ),
    );
  }
}


