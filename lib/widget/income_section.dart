import 'package:flutter/material.dart';
import 'package:response_application/model/income_model.dart';
import 'package:response_application/utils/style.dart';

class ListIncomeDetails extends StatelessWidget {
  const ListIncomeDetails({super.key});
  final List<IncomeModel> item = const [
    IncomeModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: item
          .map((e) => Padding(
                padding: const EdgeInsets.only(top: 8),
                child: IncomeDetails(model: e),
              ))
          .toList(),
    );
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.model});
  final IncomeModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: ShapeDecoration(
            color: model.color,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          model.title,
          style: Style.styleRegular16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          model.value,
          style: Style.styleMedium16,
        )
      ],
    );
  }
}
