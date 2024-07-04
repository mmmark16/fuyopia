import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChefPage extends StatefulWidget {
  const ChefPage({super.key});

  @override
  State<ChefPage> createState() => _ChefPageState();
}

class _ChefPageState extends State<ChefPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                onTap: (){Navigator.pop(context);},
        child:Icon(Icons.arrow_back_ios_new)),
                Container(
                    width: 42,
                    height: 42,
                    child: Image.asset('assets/Chef.png')),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Text(
                    "Специалист гастрономических оргазмов",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 120),
                child: Container(
                  width: 200,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(0, 32, 96, 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32, top: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 156,
                              child: Text(
                                "Репин Александр Валерьевич",
                                style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.clip,

                              ),
                            ),
                            Text("---", style: TextStyle(color: Colors.white),),
                            Text("---", style: TextStyle(color: Colors.white),),
                            Text("---", style: TextStyle(color: Colors.white),),
                            Text("---", style: TextStyle(color: Colors.white),),
                            Text("---", style: TextStyle(color: Colors.white),),
                            Text("---", style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset('assets/chef_icon.png'),
            ],
          ),
        ],
      ),
    );
  }
}
