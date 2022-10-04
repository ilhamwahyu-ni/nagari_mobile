import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagarismart/constans/webname.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends StatefulWidget {
  const WebViewStack({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Completer<WebViewController> controller;

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebView(
          initialUrl: oase,
          onWebViewCreated: (webViewcontroller) {
            widget.controller.complete(webViewcontroller);
          },
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            loadingPercentage = 100;
          },
          navigationDelegate: (navigation) {
            final host = Uri.parse(navigation.url).host;
            if (host.contains('batipuahateh.desa.id/siteman')) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Ini Halaman Admin, Silahkan Login di Layanan Online Nagari',
                  ),
                ),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          javascriptMode: JavascriptMode.unrestricted,
          javascriptChannels: _createJavascriptChannels(context),
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }

  Set<JavascriptChannel> _createJavascriptChannels(BuildContext context) {
    return {
      JavascriptChannel(
        name: 'SnackBar',
        onMessageReceived: (message) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message.message)));
        },
      ),
    };
  }
}
