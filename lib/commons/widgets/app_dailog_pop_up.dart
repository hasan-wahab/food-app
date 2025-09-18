import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class ShowDialogPopUp extends StatelessWidget {
  final String? hedding;
  final String? content;
  final List<Widget>? actions;
  const ShowDialogPopUp({super.key, this.hedding, this.content, this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      content: Text(content != null ? content! : ''),
      title: Text(
        hedding != null ? hedding! : '',
        style: AppTextStyle.firstTStyle,
      ),
      actions: actions,
    );
  }
}
