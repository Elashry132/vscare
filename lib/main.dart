import 'package:flutter/material.dart';
import 'package:vscare/core/routing/app_router.dart';

import 'doc_app.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
