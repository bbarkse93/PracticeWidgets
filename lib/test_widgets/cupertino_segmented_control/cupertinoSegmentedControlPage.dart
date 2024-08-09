import 'package:flutter/material.dart';
import 'package:practice_widgets/test_widgets/cupertino_segmented_control/widgets/cupertinoSegmentedControl.dart';
import 'package:practice_widgets/test_widgets/cupertino_segmented_control/widgets/cupertinoSlidingSegmentedControl.dart';
import 'package:practice_widgets/test_widgets/cupertino_segmented_control/widgets/toggleButton.dart';

class CupertinoSegmentedControlPage extends StatefulWidget {
  const CupertinoSegmentedControlPage({super.key});

  @override
  State<CupertinoSegmentedControlPage> createState() =>
      _CupertinoSegmentedControlPageState();
}

class _CupertinoSegmentedControlPageState
    extends State<CupertinoSegmentedControlPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 3,
    vsync: this,
    initialIndex: 0,
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('SegmentedControl'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _tabBar(),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  CupertinoSegmentedControlExample(),
                  CupertinoSlidingSegmentedControlExample(),
                  ToggleButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.green, fontSize: 16.0),
      unselectedLabelStyle: TextStyle(fontSize: 16.0),
      indicatorColor: Colors.green,
      indicatorWeight: 5.0,
      indicatorSize: TabBarIndicatorSize.tab,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      labelPadding: EdgeInsets.symmetric(vertical: 5),
      tabs: const [
        Tab(text: "세그먼트"),
        Tab(text: "슬라이딩세그먼트"),
        Tab(text: "토글버튼"),
      ],
    );
  }
}
