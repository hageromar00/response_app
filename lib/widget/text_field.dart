import 'package:flutter/material.dart';
import 'package:response_application/widget/custom_text.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    txt: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  txt: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    txt: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  txt: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backcolor: Colors.white,
                txtcolor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomButton(text: 'Send Money'),
            ),
          ],
        ),
     SizedBox(
          height: 20,
        ),],
    );
  }
}