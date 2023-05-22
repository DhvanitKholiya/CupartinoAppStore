import 'package:flutter/cupertino.dart';

import 'First.dart';

void main() {
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => const First()},
  ));
}
