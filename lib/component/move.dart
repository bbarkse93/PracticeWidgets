import 'package:flutter/cupertino.dart';
import 'package:practice_widgets/test_widgets/testPage.dart';



class Move {
  static String testPage = "/test";

}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.testPage: (context) => TestPage(),
  };
}
