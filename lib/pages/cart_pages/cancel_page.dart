import 'package:flutter/material.dart';

import '../../widget/cancel_order_card.dart';
import '../../widget/order_small_card.dart';

class CancelPage extends StatefulWidget {
  const CancelPage({super.key});

  @override
  State<CancelPage> createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> {

  List<int> _widgetCount = [1,2];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) => Dismissible(
        key: Key(_widgetCount[index].toString()),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 16.0),
          child: const Icon(
            Icons.delete,
            color: Color.fromRGBO(8, 192, 105, 1),
          ),
        ),
        child: CancelOrderCard(),
      ),
    );
  }
}
