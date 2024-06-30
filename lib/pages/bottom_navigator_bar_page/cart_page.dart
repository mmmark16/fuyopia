import 'package:flutter/material.dart';
import '../../widget/avatar.dart';
import '../../widget/const.dart';
import '../cart_pages/active_page.dart';
import '../cart_pages/cancel_page.dart';
import '../cart_pages/history_page.dart';
import '../profile_pages/profile_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isActive = true;
  bool isHistory = false;
  bool isCancek = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new), onPressed:(){Navigator.pop(context);} ,),
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
            Container(
                width: 56,
                height: 56,
                child: Image.asset('assets/restaurant_image.png')),
            Container(
                width: 42, height: 42, child: Image.asset('assets/Chef.png')),
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
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          isActive = true;
                          isHistory = false;
                          isCancek = false;
                          setState(() {});
                        },
                        child: Column(   crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Активные',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: isActive ? Colors.black : Colors.grey),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: isActive
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isActive = false;
                          isHistory = true;
                          isCancek = false;
                          setState(() {});
                        },
                        child: Column(   crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'История',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: isHistory ? Colors.black : Colors.grey),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: isHistory
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isActive = false;
                          isHistory = false;
                          isCancek = true;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Отмененные',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: isCancek ? Colors.black : Colors.grey),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: isCancek
                                      ? TColors.accentLight
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(100))),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              isActive
                  ? ActivePage()
                  : isHistory
                      ? HistoryPage()
                      : CancelPage(),
            ],
          ),
        ),
      ),
    );
  }
}
