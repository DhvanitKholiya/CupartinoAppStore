import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Global.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CupertinoSearchTextField(
                suffixMode: OverlayVisibilityMode.always,
                itemColor: CupertinoColors.black,
              ),
              Column(
                children: Global.earBud
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        color: CupertinoColors.systemGrey
                                            .withOpacity(0.2),
                                        child: Image.asset(e['image']),
                                      )),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("${e['Title']}"),
                                          Text("\$${e['price']}"),
                                        ],
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: CupertinoButton(
                                        onPressed: () {},
                                        child: const Icon(
                                          CupertinoIcons.add_circled,
                                          color: CupertinoColors.black,
                                        ),
                                      )),
                                ],
                              ),
                              Divider(
                                indent: 60,
                                height: 1,
                                color: CupertinoColors.inactiveGray
                                    .withOpacity(0.6),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ));
  }
}
