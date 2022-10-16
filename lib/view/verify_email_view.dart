import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarismart/auth/bloc/auth_bloc_bloc.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifikasi Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
              width: 250,
              child: Image(
                image: AssetImage('assets/onboard/verif_email.png'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'Kami telah mengirim verifikasi email, Mohon Buka email dan Verifikasi akun anda, Jika Kamu belum menerima Verifikasi Email, Silahkan Tekan Tombol dibawah',
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () async {
                context
                    .read<AuthBlocBloc>()
                    .add(const AuthEventSendEmailVerification());
              },
              child: const Text('Kirim Verifikasi Email'),
            ),
            TextButton(
              onPressed: () async {
                context.read<AuthBlocBloc>().add(const AuthEventLogOut());
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
