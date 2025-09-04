import 'package:curely_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'docdoc_app.dart';

void main() {
  setupGetIt();
  runApp(DocdocApp(
    appRouter: AppRouter(),
  ));
}
