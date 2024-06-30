import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/friend_big.png'),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width-100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Игорь",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,), ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color.fromRGBO(239, 136, 41, 1),),
                          Text("5.0")
                        ],
                      )
                    ],
                  ),
                  Text("Я бы ходил чаще, но я не миллионер!",style: TextStyle(fontSize: 14,), overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
