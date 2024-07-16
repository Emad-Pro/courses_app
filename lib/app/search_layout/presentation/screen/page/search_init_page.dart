import 'package:flutter/material.dart';

import '../../widget/search_appbar_widget.dart';
import '../../widget/search_by_category_gridview_widget.dart';
import '../../widget/search_resent_girdview_widget.dart';
import '../../widget/search_textformfiled_widget.dart';

class SearchInitPage extends StatelessWidget {
  const SearchInitPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SearchAppbarWidget(),
        SearchTextFormFiledWidget(),
        SearchResentGridviewWidget(),
        SearchByCategoryGridViewWidget()
      ],
    );
  }
}
