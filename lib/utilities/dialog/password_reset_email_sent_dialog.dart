import 'package:flutter/material.dart';
import 'package:nagarismart/utilities/dialog/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(
  BuildContext context,
) {
  return showGenericDialog(
    context: context,
    title: 'Reset Password',
    content: 'Kami Telah Mengirim Reset Password, Mohon Cek Email Anda',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
