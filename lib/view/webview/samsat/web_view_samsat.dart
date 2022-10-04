import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/menu.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/navigation_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_stack.dart';

class ViewWebSamsat extends StatefulWidget {
  const ViewWebSamsat({Key? key}) : super(key: key);

  @override
  State<ViewWebSamsat> createState() => _ViewWebSamsatState();
}

class _ViewWebSamsatState extends State<ViewWebSamsat> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Samsat Keliling'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
