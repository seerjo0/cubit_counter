import 'package:cubit_counter/src/views/other-page/other_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String otherPageRoute = '/other-page';

  static final Map<String, Widget Function(BuildContext)> routes = {
    otherPageRoute: (context) => const OtherPageScreen(),
  };
}