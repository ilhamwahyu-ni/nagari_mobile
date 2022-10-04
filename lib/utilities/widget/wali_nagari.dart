import 'package:flutter/material.dart';

class WaliNagari extends StatelessWidget {
  final String fotoWaliNagari;
  const WaliNagari({
    super.key,
    required this.fotoWaliNagari,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 8,
      child: Container(
        height: 165,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color.fromARGB(255, 255, 217, 0),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                offset: const Offset(1, 1),
                blurRadius: 6,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      'Nagari Santiang',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1.0,
                            color: Colors.yellow,
                          ),
                    ),
                    Text(
                      'Batipuah Ateh',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'Nikmati Pelayanan',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w300, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          'Online ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.yellow),
                        ),
                        Text(
                          'Nagari',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.zero, right: Radius.circular(16)),
                  image: DecorationImage(
                    image: AssetImage(fotoWaliNagari),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
