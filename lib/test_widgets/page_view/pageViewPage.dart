import 'package:flutter/material.dart';
import 'package:practice_widgets/test_widgets/page_view/page_view_elements/accountPage.dart';
import 'package:practice_widgets/test_widgets/page_view/page_view_elements/detailPage.dart';
import 'package:practice_widgets/test_widgets/page_view/page_view_elements/personalPage.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        _currentPage += 1;
      });
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.animateToPage(
        _currentPage - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        _currentPage -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('PageView'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              physics: NeverScrollableScrollPhysics(), // 스와이프 비활성화
              children: [
                PersonalPage(onPressed: _nextPage),
                AccountPage(onPressed: _nextPage),
                DetailPage(
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > 0)
                  TextButton(
                    onPressed: _previousPage,
                    child: Text('Previous'),
                  ),
                if (_currentPage < 2)
                  Spacer(), // To push the Next button to the right
                if (_currentPage < 2)
                  TextButton(
                    onPressed: _nextPage,
                    child: Text('Next'),
                  ),
                if (_currentPage == 2)
                  Spacer(), // To push the Submit button to the right
                if (_currentPage == 2)
                  TextButton(
                    onPressed: () {
                      // 회원가입 완료 로직
                    },
                    child: Text('Submit'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
