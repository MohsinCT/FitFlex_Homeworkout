import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
          'https://www.freeprivacypolicy.com/live/15d0e450-b603-4a05-bc03-2d00b111edb0'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}