import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
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

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );
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
                Expanded(
                  flex: 2,
                  child: IntroductionScreen(
                    key: introKey,
                    animationDuration: 350,
                    pages: [
                      PageViewModel(
                        title: "Batipuah Ateh Digital",
                        body:
                            "Mudahkan Seluruh Layanan Dalam Satu Aplikasi,\n Coba Sekarang ",
                        image: _buildImage('splash/splash.png'),
                        decoration: pageDecoration,
                      ),
                      PageViewModel(
                        title: "Pilih Layanan",
                        body:
                            "Pilihan Layanan Nagari Maupun Dukcapil, SKTM, SKU/NIB, KK Baru, Akta Kelahiran, Pindah Dll .",
                        image: _buildImage('onboard/pilihan.png'),
                        decoration: pageDecoration,
                      ),
                      PageViewModel(
                        title: "Surat / Dokumen ",
                        body:
                            "Segala Macam Surat dan Dokumen Bisa selesai Dengan Cepat",
                        image: _buildImage('onboard/surat.png'),
                        decoration: pageDecoration,
                      ),
                    ],
                    skipOrBackFlex: 0,
                    nextFlex: 0,
                    showBackButton: false,
                    showNextButton: false,
                    showDoneButton: false,
                    curve: Curves.fastLinearToSlowEaseIn,
                    dotsDecorator: const DotsDecorator(
                      size: Size(10.0, 10.0),
                      color: Color(0xFFBDBDBD),
                      activeSize: Size(22.0, 10.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Silahkan Login Disini',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            final email = _email.text;
                            context.read<AuthBlocBloc>().add(
                                  AuthEventForgotPassword(email),
                                );
                          },
                          child: const Text(
                            'Lupa Password?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
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
                          obscureText: true,
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
                        TextButton(
                          onPressed: () {
                            context.read<AuthBlocBloc>().add(
                                  const AuthEventShouldRegister(),
                                );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  final email = _email.text;
                                  final password = _password.text;
                                  context
                                      .read<AuthBlocBloc>()
                                      .add(AuthEventLogin(
                                        email: email,
                                        password: password,
                                      ));
                                },
                                child: const Text('Login'),
                              ),
                              const Spacer(),
                              const Text('Belum Daftar?  '),
                              const Text(
                                'Daftar Disini',
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
