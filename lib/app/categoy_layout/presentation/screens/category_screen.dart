import 'package:courses_app/app/categoy_layout/presentation/controller/category_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/category_finsh_button_widget.dart';
import '../widget/category_gridview_multi_selecetion_item_widget.dart';
import '../widget/category_title_and_sub_title_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 10),
          child: CustomScrollView(
            slivers: [
              CategoryTitleAndSubTitleWidget(),
              CategoryGridviewMultiSelecetionItemWidget(),
              CategoryFinshButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
