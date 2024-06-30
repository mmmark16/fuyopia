import 'package:flutter/material.dart';

import '../pages/product_page.dart';

bool _isFavorite = false;

class FoodCard extends StatefulWidget {
  final String photoPath;
  const FoodCard({super.key, required this.photoPath});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
      },
      child: Container(
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(0, 32, 96, 1),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  _isFavorite = !_isFavorite;
                  setState(() {
                  });
                },
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(12)),
                      color: Color.fromRGBO(8, 192, 105, 1)),
                  child: _isFavorite == true ? Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(0, 32, 96, 1),
                  ) : Icon(
                    Icons.favorite_border,
                    color: Color.fromRGBO(0, 32, 96, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Ресторан 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14.0, bottom: 24),
                    child: Text(
                      'часы работ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 86,
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(
                        widget.photoPath,
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(12)),
                    color: Color.fromRGBO(
                        132, 189, 147, 1)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
