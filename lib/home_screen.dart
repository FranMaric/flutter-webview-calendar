import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const desktopUserAgent =
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://calendar.google.com/calendar/u/0',
          javascriptMode: JavascriptMode.unrestricted,
          userAgent: desktopUserAgent,
        ),
      ),
    );
  }
}
