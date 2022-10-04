import 'package:flutter/material.dart';
import 'package:nagarismart/utilities/dialog/generic_dialog.dart';

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showGenericDialog(
    context: context,
    title: 'Terjadi Error',
    content: text,
    optionBuilder: () => {
      'OK': null,
    },
  );
}
