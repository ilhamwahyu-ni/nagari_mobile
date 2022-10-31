import 'package:flutter/material.dart';
import 'package:nagarismart/utilities/dialog/generic_dialog.dart';

Future<void> showveerifikasiSentDialog(
  BuildContext context,
) {
  return showGenericDialog(
    context: context,
    title: 'Verifikasi Email',
    content: 'Kami Telah Mengirim Verifikasi email, Mohon Cek Email Anda',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
