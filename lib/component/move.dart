import 'package:flutter/cupertino.dart';
import 'package:practice_widgets/test_widgets/expansion_panel_list/expansionPanelListPage.dart';
import 'package:practice_widgets/test_widgets/page_view/pageViewPage.dart';
import 'package:practice_widgets/test_widgets/testPage.dart';



class Move {
  static String testPage = "/test";
  static String expansionPanelListPage = "/expansionPanelList";
  static String pageViewPage = "/pageView";

}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.testPage: (context) => TestPage(),
    Move.expansionPanelListPage: (context) => ExpansionPanelListPage(),
    Move.pageViewPage: (context) => PageViewPage(),
  };
}
