import 'package:flutter/material.dart';

class DishHistoryPage extends StatelessWidget {
  const DishHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  GestureDetector(
            onTap: (){Navigator.pop(context);},
            child:Icon(Icons.arrow_back_ios_new)),
        title: Text("Курица с овощами"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 12),
        child: Container(
          child: Text(
            "История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда История блюда "
          ),
        ),
      ),
    );
  }
}
