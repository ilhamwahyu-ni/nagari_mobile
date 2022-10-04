import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/menu.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/navigation_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_stack.dart';

class ViewWebBansos extends StatefulWidget {
  const ViewWebBansos({Key? key}) : super(key: key);

  @override
  State<ViewWebBansos> createState() => _ViewWebBansosState();
}

class _ViewWebBansosState extends State<ViewWebBansos> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Bantuan Sosial'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
