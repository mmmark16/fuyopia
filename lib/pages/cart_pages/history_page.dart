import 'package:flutter/material.dart';
import '../../widget/history_order_card.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<int> _widgetCount = [1, 2];

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color.fromRGBO(8, 192, 105, 1),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    border: Border.all(
                        color: Color.fromRGBO(8, 192, 105, 1), width: 2)),
                child: Icon(
                  Icons.delete,
                  color: Color.fromRGBO(8, 192, 105, 1),
                ),
              ),
            ],
          ),
        ),
        child: HistoryOrderCard(),
      ),
    );
  }
}
