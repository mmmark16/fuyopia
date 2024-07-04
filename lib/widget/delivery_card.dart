import 'package:flutter/material.dart';

class DeliveryCard extends StatelessWidget {
  final String photoPath;
  final String deliveryName;
  final String available;
  const DeliveryCard({super.key, required this.photoPath, required this.deliveryName, required this.available});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height:  MediaQuery.of(context).size.height / 5.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: available == "Доступно" ? Color.fromRGBO(12, 199, 8, 0.5) : Color.fromRGBO(63, 63, 63, 0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(deliveryName, style: TextStyle(
                fontSize: 18,
                color: available == "Доступно" ? Color.fromRGBO(12, 199, 8, 1) : Colors.black),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(photoPath),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(available, style: TextStyle(
                    fontSize: 18,
                    color: available == "Доступно" ? Colors.black : Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
