import 'package:flutter/material.dart';

import '../widget/order_small_card.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State createState() => _TestState();
}

class _TestState extends State {
  List<int> tt = [1,2];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dismiss Widgets Demo',
      theme: ThemeData(),
      home: Scaffold(
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) => Dismissible(
            key: Key(tt[index].toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 16.0),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: OrderSmallCard(dishName: 'СУши',),
          ),
        ),
      ),
    );
  }
}