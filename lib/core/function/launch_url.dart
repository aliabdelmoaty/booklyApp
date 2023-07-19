import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/widgets/progress_loading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchCustomUrl(
    BuildContext context, String url, LaunchMode launchMode) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: launchMode,
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('can\'t launch $url')));
    }
  }
}
