import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarismart/auth/auth_exception.dart';
import 'package:nagarismart/auth/bloc/auth_bloc_bloc.dart';
import 'package:nagarismart/utilities/dialog/error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => RegisterViewState();
}

class RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBlocBloc, AuthBlocState>(
      listener: (context, state) async {
        if (state is AuthStateRegistering) {
          if (state.exception is WeekPasswordAuthException) {
            await showErrorDialog(context, 'Password Lemah');
          } else if (state.exception is InvalidEmailAuthException) {
            await showErrorDialog(context, 'Email Salah');
          } else if (state.exception is EmailAlreadyInUsedAuthException) {
            await showErrorDialog(context, 'Email Sudah Digunakan');
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, 'Gagal Mendaftar');
          }
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('assets/splash/splash.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _email,
                    autocorrect: false,
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                      ),
                      labelText: 'Masukkan Email Anda',
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  TextField(
                    controller: _password,
                    autocorrect: false,
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.vpn_key_sharp,
                      ),
                      labelText: 'Masukkan Password Anda',
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final email = _email.text;
                        final password = _password.text;
                        context.read<AuthBlocBloc>().add(AuthEventRegister(
                              email: email,
                              password: password,
                            ));
                      },
                      child: const Text('Daftar')),
                  TextButton(
                    onPressed: () async {
                      context.read<AuthBlocBloc>().add(
                            const AuthEventLogOut(),
                          );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Sudah Pernah Daftar? '),
                        Text(
                          'Login Disini.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
