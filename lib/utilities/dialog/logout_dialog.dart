import 'package:flutter/material.dart';
import 'package:nagarismart/utilities/dialog/generic_dialog.dart';

Future<bool> showLogOutDialog(
  BuildContext context,
) {
  return showGenericDialog(
    context: context,
    title: 'LogOut',
    content: 'Kamu akan Log Out?',
    optionBuilder: () => {
      'Cancel': false,
      'Log Out': true,
    },
  ).then((value) => value ?? false);
}
