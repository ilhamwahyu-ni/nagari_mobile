import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarismart/auth/bloc/auth_bloc_bloc.dart';
import 'package:nagarismart/utilities/dialog/logout_dialog.dart';
import 'package:nagarismart/utilities/widget/berita/get_berita.dart';
import 'package:nagarismart/utilities/widget/faq/faq.dart';
import 'package:nagarismart/utilities/widget/layanan/Semua_layanan.dart';
import 'package:nagarismart/view/home/home_page_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currendIndex = 0;
  final screen = [
    const HomePageView(),
    const GetBerita(),
    const SemuaLayanan(),
    const Faq(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screen[currendIndex]),
      bottomNavigationBar: BottomNavyBar(
        iconSize: 18,
        selectedIndex: currendIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) {
          setState(() {
            currendIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: const Color.fromARGB(255, 255, 0, 0),
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              icon: const Icon(Icons.receipt_long),
              title: const Text('Berita'),
              activeColor: const Color.fromARGB(255, 255, 0, 0),
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              icon: const Icon(Icons.explore),
              title: const Text('Layanan'),
              activeColor: const Color.fromARGB(255, 255, 0, 0),
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              icon: const Icon(Icons.question_answer),
              title: const Text('FAQ'),
              activeColor: const Color.fromARGB(255, 255, 0, 0),
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              icon: IconButton(
                splashRadius: 1,
                onPressed: () async {
                  final shouldLogOut = await showLogOutDialog(context);
                  if (shouldLogOut) {
                    context.read<AuthBlocBloc>().add(
                          const AuthEventLogOut(),
                        );
                  }
                },
                icon: Icon(Icons.logout_rounded),
              ),
              title: const Text('Log Out'),
              activeColor: const Color.fromARGB(255, 255, 0, 0),
              inactiveColor: Colors.black54),
        ],
      ),
    );
  }
}
