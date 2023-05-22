import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: Global.homePage
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 5,
                              child: Container(
                                height: 80,
                                width: 80,
                                color: CupertinoColors.inactiveGray
                                    .withOpacity(0.2),
                                child: Image.asset(e['image']),
                              )),
                          Expanded(
                            flex: 15,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(padding: EdgeInsets.only(left: 10)),
                                Text(e['name']),
                                Text("\$${e['subtitle']}"),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: CupertinoButton(
                                  onPressed: () {
                                    Global.cart.add(e);
                                    setState(() {
                                      e['i']++;
                                      e['total'] = e['subtitle'] * e['i'];

                                      Global.totalBill += e['total'];
                                      Global.finalBill = Global.totalBill +
                                          Global.shipping +
                                          Global.tax;
                                    });
                                  },
                                  child: const Icon(
                                    CupertinoIcons.add_circled_solid,
                                    color: CupertinoColors.black,
                                  ))),
                        ],
                      ),
                      Divider(
                        indent: 80,
                        height: 1,
                        color: CupertinoColors.inactiveGray.withOpacity(0.6),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
