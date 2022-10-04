import 'package:flutter/material.dart';

class Layanan extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Widget icon;
  const Layanan({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Material(
              elevation: 5,
              shape:
                  const CircleBorder(side: BorderSide(color: Colors.black12)),
              child: CircleAvatar(
                backgroundColor: Colors.white24,
                minRadius: 28,
                child: icon,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
