import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/menu.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/navigation_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_stack.dart';



class ViewWebOase extends StatefulWidget {
  const ViewWebOase({Key? key}) : super(key: key);

  @override
  State<ViewWebOase> createState() => _ViewWebOaseState();
}

class _ViewWebOaseState extends State<ViewWebOase> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pelayanan Dukcapil'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
