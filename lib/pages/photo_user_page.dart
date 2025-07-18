import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuyopia/pages/profile_pages/profile_page.dart';

import '../widget/avatar.dart';
import '../widget/const.dart';

class PhotoUserPage extends StatelessWidget {
  const PhotoUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child:Icon(Icons.arrow_back_ios_new)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ресторан 1",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(
                  "часы работ",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            Icon(
              Icons.star,
              color: Color.fromRGBO(245, 148, 35, 1),
            ),
            Text(
              "8.5",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          Image.asset('assets/Place_marker.png'),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                },
                child: CustomAvatar(
                  backColor: TColors.accent,
                  width: 45,
                  url: 'assets/no_avatar.png',
                  name: "Дениска Биткоин",
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Color.fromRGBO(8, 192, 105, 1),
                child: Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Фото посетителей", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: SvgPicture.asset('assets/dish.svg', width: 300,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 46,
                      color: Color.fromRGBO(
                        252,
                        202,
                        126,
                        1,
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Text(
                        "г.Москва ул. Святославского 99", style: TextStyle(fontSize: 14,),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Container(
                    width: 120,
                    child: Text(
                      "Pablitto   22.08.23", style: TextStyle(fontSize: 14,),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: SvgPicture.asset('assets/dish.svg', width: 300,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 46,
                      color: Color.fromRGBO(
                        252,
                        202,
                        126,
                        1,
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Text(
                        "г.Москва ул. Святославского 99", style: TextStyle(fontSize: 14,),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Container(
                    width: 120,
                    child: Text(
                      "Pablitto   22.08.23", style: TextStyle(fontSize: 14,),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: SvgPicture.asset('assets/dish.svg', width: 300,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 46,
                      color: Color.fromRGBO(
                        252,
                        202,
                        126,
                        1,
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Text(
                        "г.Москва ул. Святославского 99", style: TextStyle(fontSize: 14,),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Container(
                    width: 120,
                    child: Text(
                      "Pablitto   22.08.23", style: TextStyle(fontSize: 14,),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: SvgPicture.asset('assets/dish.svg', width: 300,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 46,
                      color: Color.fromRGBO(
                        252,
                        202,
                        126,
                        1,
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Text(
                        "г.Москва ул. Святославского 99", style: TextStyle(fontSize: 14,),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Container(
                    width: 120,
                    child: Text(
                      "Pablitto   22.08.23", style: TextStyle(fontSize: 14,),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
