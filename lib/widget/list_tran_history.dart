import 'package:flutter/material.dart';
import 'package:response_application/model/tran_model.dart';
import 'package:response_application/utils/style.dart';

class ListTranHistory extends StatelessWidget {
  const ListTranHistory({super.key});
  final List<TranModel> item = const [
     TranModel(
        title: 'Cash Withdrawal',
        data: '13 Apr, 2022 ',
        price: r'$20,129',
        iswithdraw: true),
    TranModel(
        title: 'Landing project',
        data: '13 Apr, 2022 ',
       price: r'$20,129',
        iswithdraw: false),
    TranModel(
        title: 'Mobile App proj',
        data: '13 Apr, 2022 ',
        price: r'$20,129',
        iswithdraw: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:item.map((e)=> TranHistory(model: e)).toList(),
    );
  }
}

class TranHistory extends StatelessWidget {
  const TranHistory({super.key, required this.model});
  final TranModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          model.title,
          style: Style.styleSemiBold16,
        ),
        subtitle: Text(
          model.data,
          style: Style.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          model.price,
          style: Style.styleSemiBold20.copyWith(
            color: model.iswithdraw
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
