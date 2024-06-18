import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool isDish = true;
  bool isRestaraunt = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Избранное"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.toc),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 64, top: 38, bottom: 64),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isDish = true;
                        isRestaraunt = false;
                        setState(() {});
                      },
                      child: Text(
                        'Блюда',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight:
                                isDish ? FontWeight.bold : FontWeight.normal),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isRestaraunt = true;
                        isDish = false;
                        setState(() {});
                      },
                      child: Text(
                        'Рестораны',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: isRestaraunt
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 400,
            height: 400,
            child: isDish
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          width: 260,
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(0, 32, 96, 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 52.0),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/dish.svg',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 24.0, top: 32),
                                child: Text(
                                  "Блюдо 1",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 24.0, top: 28),
                                child: Text(
                                  "1.953 руб",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          width: 260,
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(8, 192, 105, 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 52.0),
                                child: Center(
                                    child: Container(
                                        width: 200,
                                        height: 200,
                                        child: Image.asset(
                                          'assets/restaurant_image.png',
                                        ))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 24.0, top: 32),
                                child: Text(
                                  "Ресторан 1",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 24.0, top: 28),
                                child: Text(
                                  "Адрес",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
