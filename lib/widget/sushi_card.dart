import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/product_page.dart';

class SushiCard extends StatelessWidget {
  const SushiCard({super.key});

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
          borderRadius:
          BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(8, 192, 105, 1),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(12)),
                    color:
                    Color.fromRGBO(0, 32, 96, 1)),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                    ),
                    child: Text(
                      'Суши 1',
                      style: TextStyle(
                          color: Color.fromRGBO(
                              63, 45, 32, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 16),
                    child: Center(
                        child: SvgPicture.asset(
                          'assets/sushi_plate.svg',
                          width: 120,
                        )),
                  )
                ],
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
