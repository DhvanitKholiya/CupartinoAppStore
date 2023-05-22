import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Global.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    CupertinoIcons.person,
                    color: CupertinoColors.black,
                    size: 30,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: CupertinoColors.black)),
                    child: const CupertinoTextField(
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    CupertinoIcons.mail,
                    color: CupertinoColors.black,
                    size: 30,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: CupertinoColors.black)),
                    child: const CupertinoTextField(
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    CupertinoIcons.location,
                    color: CupertinoColors.black,
                    size: 30,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: CupertinoColors.black)),
                    child: const CupertinoTextField(
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(
                    CupertinoIcons.time,
                    color: CupertinoColors.black,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Deliver Time",
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    "${Global.dateTime.day}/${Global.dateTime.month}/${Global.dateTime.year}  ${Global.dateTime.hour}:${Global.dateTime.minute}",
                    style: const TextStyle(
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                height: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CupertinoDatePicker(
                  backgroundColor: CupertinoColors.white.withOpacity(0.7),
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: Global.dateTime,
                  onDateTimeChanged: (DateTime value) {
                    Global.dateTime = value;
                  },
                ),
              ),
              Column(
                children: Global.cart
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: Image.asset("${e['image']}"))),
                          Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${e['name']}",
                                  style: const TextStyle(
                                      color: CupertinoColors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$${e['subtitle']}",
                                  style: const TextStyle(
                                      color: CupertinoColors.inactiveGray,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                "\$${e['total']}",
                                style: const TextStyle(
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Shipping       \$21.0",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Tax       \$10.32",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total       \$${Global.finalBill}",
                    style: const TextStyle(
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
