import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/menu.dart';
import 'package:nagarismart/view/webview/batipuahAteh/controller/navigation_control.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'web_view_stack.dart';

class ViewWebBatipuahAteh extends StatefulWidget {
  const ViewWebBatipuahAteh({Key? key}) : super(key: key);

  @override
  State<ViewWebBatipuahAteh> createState() => _ViewWebBatipuahAtehState();
}

class _ViewWebBatipuahAtehState extends State<ViewWebBatipuahAteh> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Batipuah Ateh'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
