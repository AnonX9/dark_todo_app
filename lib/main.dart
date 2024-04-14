import 'package:dark_todo_app/clients/connection_status_listener.dart';
import 'package:dark_todo_app/clients/local_db.client.dart';
import 'package:dark_todo_app/core/app_entry.dart';
import 'package:dark_todo_app/logs/app_provider_observer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart';

import 'clients/talker.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await EasyLocalization.ensureInitialized();

  final objectBox =
      await ObjectBoxManager.init(); // Initialize ObjectBoxManager

  FlutterError.onError = (details) => talker.handle(
        details.exception,
        switch (details.stack) {
          final value? => Trace.from(value).terse,
          _ => null,
        },
        details.exceptionAsString(),
      );

  await initNoInternetListener();

  runApp(
    ProviderScope(
      overrides: [localDbProvider.overrideWithValue(objectBox)],
      observers: [AppProviderObserver(talker)],
      child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('fr')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: AppEntry(),
      ),
    ),
  );

  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}
