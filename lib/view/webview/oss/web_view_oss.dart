import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/menu.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/navigation_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_stack.dart';

class ViewWebOss extends StatefulWidget {
  const ViewWebOss({Key? key}) : super(key: key);

  @override
  State<ViewWebOss> createState() => _ViewWebOssState();
}

class _ViewWebOssState extends State<ViewWebOss> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nomor Induk Berusaha / SKU'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
