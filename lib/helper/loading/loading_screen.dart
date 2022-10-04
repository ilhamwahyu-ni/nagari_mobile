import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/helper/loading/loading_screen_controller.dart';

class LoadingScreen {
  LoadingScreen._sharedInstance();
  static final LoadingScreen _shared = LoadingScreen._sharedInstance();
  factory LoadingScreen() => _shared;

  LoadingScreenController? controller;

  void show({
    required BuildContext context,
    required String text,
  }) {
    if (controller?.update(text) ?? false) {
      return;
    } else {
      controller = showOverlay(
        // sidini harus di masukkan variable kedalam controller
        context: context,
        text: text,
      );
    }
  }

  void hide() {
    controller?.close();
    controller = null;
  }
}

LoadingScreenController showOverlay({
  required BuildContext context,
  required String text,
}) {
  final _text = StreamController<String>();
  _text.add(text);

  final state = Overlay.of(context);
  final renderBox = context.findRenderObject() as RenderBox;
  final size = renderBox.size;

  final overlay = OverlayEntry(
    builder: (context) {
      return Material(
        color: Colors.black.withAlpha(150),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.8,
            maxWidth: size.height * 0.8,
            minHeight: size.height * 0.5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              const CircularProgressIndicator(),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder(
                stream: _text.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data as String,
                      textAlign: TextAlign.center,
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      );
    },
  );

  state?.insert(overlay);

  return LoadingScreenController(
    close: () {
      _text.close();
      overlay.remove();
      return true;
    },
    update: (text) {
      _text.add(text);
      return true;
    },
  );
}
