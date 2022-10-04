import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart'; //
import 'package:webview_flutter/webview_flutter.dart';

const String kExamplePage = '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Load file or HTML string example</title>
</head>
<body>

<h1>Local demo page</h1>
<p>
 This is an example page used to demonstrate how to load a local file or HTML
 string using the <a href="https://pub.dev/packages/webview_flutter">Flutter
 webview</a> plugin.
</p>

</body>
</html>
''';

enum _MenuOptions {
  navigationDelegate,
  userAgent,
  javascriptChannel,
  listCookies,
  clearCookies,
  addCookies,
  setCookies,
  removeCokies,
  loadFlutterAsset,
  loadLocalFile,
  loadHtmlString,
}

class Menu extends StatefulWidget {
  const Menu({Key? key, required this.controller}) : super(key: key);

  final Completer<WebViewController> controller;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final CookieManager cookieManager = CookieManager();

  Future<void> _onlistCookies(WebViewController controller) async {
    final String cookies =
        await controller.runJavascriptReturningResult('document.cookie');
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(cookies.isEmpty ? cookies : 'There are no cookies'),
      ),
    );
  }

  Future<void> _onclearCookies() async {
    final hadCookies = await cookieManager.clearCookies();
    String message = 'There were cookies. Now, they are gone!';
    if (!hadCookies) {
      message = 'There were no cookies to clear';
    }
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> _onAddCookie(WebViewController controller) async {
    await controller.runJavascript('''var date = new Date();
    date.setTime(date.gettime()+(30*2*60*60*1000));
    document.cookie = "FirstName=john; expires=" + date.toGMTString();''');
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Coustum cookie added'),
      ),
    );
  }

  Future<void> _onSetCookie(WebViewController controller) async {
    await cookieManager.setCookie(const WebViewCookie(
        name: 'foo', value: 'bar', domain: 'batipuahateh.desa.id'));

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Costum cookie is set'),
      ),
    );
  }

  Future<void> _onRemoveCookie(WebViewController controller) async {
    await controller.runJavascript(
        'document.cookie="FirstName=Jhon; expires=Thu, 01 jan 1970 00:00:00 UTC"');

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Costum cookie is Removed'),
      ),
    );
  }

  Future<void> _onLoadFlutterAssetExample(
      WebViewController controller, BuildContext context) async {
    await controller.loadFlutterAsset('assets/www/index.html');
  }

  Future<void> _onLoadLocalFileExample(
      WebViewController controller, BuildContext context) async {
    final String pathToIndex = await _prepareLocalFile();

    await controller.loadFile(pathToIndex);
  }

  static Future<String> _prepareLocalFile() async {
    final String tmpDir = (await getTemporaryDirectory()).path;
    final File indexFile = File('$tmpDir/www/index.html');

    await Directory('$tmpDir/www').create(recursive: true);
    await indexFile.writeAsString(kExamplePage);

    return indexFile.path;
  }

  Future<void> _onLoadHtmlStringExample(
      WebViewController controller, BuildContext context) async {
    await controller.loadHtmlString(kExamplePage);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: widget.controller.future,
      builder: (context, controller) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (value) async {
            switch (value) {
              case _MenuOptions.navigationDelegate:
                controller.data!
                    .loadUrl('https://batipuahateh.desa.id/siteman');

                break;
              case _MenuOptions.userAgent:
                final userAgent = await controller.data!
                    .runJavascriptReturningResult('navigation.userAgent');
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(userAgent)),
                );
                break;
              case _MenuOptions.javascriptChannel:
                await controller.data!.runJavascript('''
              var req= new XMLHttpRequest();
              req.open('GET',"https://api.ipify.org/?format=json");
              req.onload=function(){
                if(req.status==200){
                  let response= JSON.parse(req.responseText);
                  SnackBar.postMessage("IP Address:" + response.ip);
                }
                else{
                  SnackBar.postMessage("Error:" + req.status);
                }
              }
              req.send();''');
                break;
              case _MenuOptions.listCookies:
                await _onlistCookies(controller.data!);
                break;
              case _MenuOptions.clearCookies:
                await _onclearCookies();
                break;
              case _MenuOptions.addCookies:
                await _onAddCookie(controller.data!);
                break;
              case _MenuOptions.setCookies:
                await _onSetCookie(controller.data!);
                break;
              case _MenuOptions.removeCokies:
                await _onRemoveCookie(controller.data!);
                break;
              case _MenuOptions.loadFlutterAsset:
                await _onLoadFlutterAssetExample(controller.data!, context);
                break;
              case _MenuOptions.loadLocalFile:
                await _onLoadLocalFileExample(controller.data!, context);
                break;
              case _MenuOptions.loadHtmlString:
                await _onLoadHtmlStringExample(controller.data!, context);
                break;
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.navigationDelegate,
              child: Text('Mengarah ke Halaman Admin'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.userAgent,
              child: Text('Show user-Agent'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.javascriptChannel,
              child: Text('Look IP Address'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.clearCookies,
              child: Text('Clear cookies'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.listCookies,
              child: Text('List cookies'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.addCookies,
              child: Text('Add cookie'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.setCookies,
              child: Text('Set cookie'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.removeCokies,
              child: Text('Remove cookie'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.loadFlutterAsset,
              child: Text('Load Flutter Asset'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.loadHtmlString,
              child: Text('Load HTML string'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.loadLocalFile,
              child: Text('Load local file'),
            ),
          ],
        );
      },
    );
  }
}
