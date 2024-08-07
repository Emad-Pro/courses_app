import '../../../../core/import/app.dart';
import '../../../../core/test/dash_chat_2.dart';
import '../widget/chat_input_text_prefix_icon_widget.dart';
import '../widget/chat_onsend_button_widget.dart';
import 'outline_input_border.dart';

inputOptions(context) => InputOptions(
      inputDecoration: InputDecoration(
          hintText: "Say somthing",
          prefixIcon: const ChatInputTextPrefixIconWidget(),
          enabledBorder: outlineInputBorder(context),
          focusedBorder: outlineInputBorder(context),
          border: outlineInputBorder(context)),
      sendButtonBuilder: (send) => ChatOnSendButtonWidget(send: send),
    );
