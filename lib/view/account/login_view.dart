import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarismart/auth/auth_exception.dart';
import 'package:nagarismart/auth/bloc/auth_bloc_bloc.dart';
import 'package:nagarismart/utilities/dialog/error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
        if (state is AuthStateLoggedOut) {
          if (state.exception is UserNotFoundAuthException) {
            await showErrorDialog(context, 'User tidak Ditemukan');
          } else if (state.exception is WrongPasswordAuthException) {
            await showErrorDialog(context, 'Password Salah');
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, 'Terjadi Masalah');
          }
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Silahkan Login Disini',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
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
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                TextField(
                  controller: _password,
                  autocorrect: false,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.vpn_key_sharp,
                    ),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      context.read<AuthBlocBloc>().add(AuthEventLogin(
                            email: email,
                            password: password,
                          ));
                    },
                    child: const Text('Login')),
                TextButton(
                  onPressed: () {
                    context.read<AuthBlocBloc>().add(
                          const AuthEventShouldRegister(),
                        );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Belum Daftar'),
                      Text(
                        'Daftar Disini',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final email = _email.text;
                    context.read<AuthBlocBloc>().add(
                          AuthEventForgotPassword(email),
                        );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
