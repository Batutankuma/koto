import 'package:flutter/material.dart';
import 'package:koto/screens/pages/index_pages.dart';

final Map<String, Widget Function(BuildContext)> routingConfig = {
  '/': (context) => const IndexPage()
};
