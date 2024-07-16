import 'package:flutter/material.dart';

import '../../widget/search_appbar_widget.dart';
import '../../widget/search_related_listview_widget.dart';
import '../../widget/search_textformfiled_widget.dart';

class SearchRelatedPage extends StatelessWidget {
  const SearchRelatedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SearchAppbarWidget(),
        SearchTextFormFiledWidget(),
        SearchRealtedListViewWidget()
      ],
    );
  }
}
