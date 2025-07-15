import 'package:flutter/material.dart';
import 'package:response_application/model/card_mpdel.dart';
import 'package:response_application/utils/app_images.dart';
import 'package:response_application/utils/style.dart';
import 'package:response_application/widget/card_header.dart';

class ListExpandItem extends StatefulWidget {
  const ListExpandItem({super.key});

  @override
  State<ListExpandItem> createState() => _ListExpandItemState();
}

class _ListExpandItemState extends State<ListExpandItem> {
  final item = const [
    ExpenseModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        data: 'April 2022',
        price: r'$20,129'),
    ExpenseModel(
        image: Assets.imagesCardSend,
        title: 'Income',
        data: 'April 2022',
        price: r'$20,129'),
    ExpenseModel(
        image: Assets.imagesCardReceive,
        title: 'Expenses',
        data: 'April 2022',
        price: r'$20,129')
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                select = 0;
              });
            },
            child: ExpandedItem(
              isSelect: select == 0,
              model: item[0],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                select = 1;
              });
            },
            child: ExpandedItem(
              isSelect: select == 1,
              model: item[1],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                select = 2;
              });
            },
            child: ExpandedItem(
              isSelect: select == 2,
              model: item[2],
            ),
          ),
        ),
      ],
    );
  }
}
// GestureDetector(
//               onTap: () {
//                 setState(() {
//                   select = indx;
//                 });
//               },
//               child: ExpandedItem(
//                 isSelect: select == indx,
//                 model: e.value,
//               ),
//             ),

class ExpandedItem extends StatelessWidget {
  const ExpandedItem({super.key, required this.model, required this.isSelect});
  final ExpenseModel model;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return isSelect
        ? ActiveExpanded(model: model)
        : InActiveExpanded(model: model);
  }
}

class ActiveExpanded extends StatelessWidget {
  const ActiveExpanded({super.key, required this.model});
  final ExpenseModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xFF4EB7F2)),
          ),
          color: const Color(0xFF4EB7F2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardHeader(
            backcolor: const Color(0xFF98DAFF),
            imagecolor: Colors.white,
            image: model.image,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: Style.styleSemiBold16.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.data,
              style: Style.styleRegular14.copyWith(color: Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.price,
              style: Style.styleSemiBold24.copyWith(color: Color(0xFFFAFAFA)),
            ),
          )
        ],
      ),
    );
  }
}

class InActiveExpanded extends StatelessWidget {
  const InActiveExpanded({super.key, required this.model});
  final ExpenseModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xFFF1F1F1)),
          ),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardHeader(
            image: model.image,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: Style.styleSemiBold16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.data,
              style: Style.styleRegular14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.price,
              style: Style.styleSemiBold24,
            ),
          )
        ],
      ),
    );
  }
}
