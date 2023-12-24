import 'package:flutter/material.dart';
import 'package:vscare/core/di/dependency_injection.dart';
import 'package:vscare/core/routing/app_router.dart';

import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
