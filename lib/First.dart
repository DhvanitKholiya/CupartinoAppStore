import 'package:flutter/cupertino.dart';

import 'Cart.dart';
import 'Home.dart';
import 'Search.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: Text(
          "Cupertino Store",
          style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      child: CupertinoTabScaffold(
        backgroundColor: CupertinoColors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
              CupertinoIcons.home,
              color: CupertinoColors.black,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              CupertinoIcons.search,
              color: CupertinoColors.black,
            )),
            BottomNavigationBarItem(
                icon: Icon(
              CupertinoIcons.cart,
              color: CupertinoColors.black,
            ))
          ],
        ),
        tabBuilder: (context, i) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                  backgroundColor: CupertinoColors.white,
                  child: (i == 0)
                      ? const HomePage()
                      : (i == 1)
                          ? const SearchPage()
                          : const CartPage());
            },
          );
        },
      ),
    );
  }
}
