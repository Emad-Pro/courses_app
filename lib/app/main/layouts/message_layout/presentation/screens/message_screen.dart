import 'package:courses_app/app/main/layouts/message_layout/presentation/controller/cubit/message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/message_appbar.dart';
import '../widget/message_listview_widget.dart';
import '../widget/message_search_textformfiled_widget.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageCubit(),
      child: BlocBuilder<MessageCubit, MessageState>(
        builder: (context, state) {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomScrollView(
              slivers: [
                MessageAppBar(),
                MessageSearchTextFormFiledWidget(),
                MessageListViewWiget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
