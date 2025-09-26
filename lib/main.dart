import 'dart:async';

import 'package:anime_alive/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  BindingBase.debugZoneErrorsAreFatal = true;

  runZonedGuarded(
    () async {
      FlutterError.onError = (FlutterErrorDetails details) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // GoRouter.of(
          //   navigatorKey.currentContext!,
          // ).push('/ErrorScreen', extra: details.exceptionAsString());
          // Handle the error here, e.g., log it or show a dialog
          print('Flutter Error: ${details.exceptionAsString()}');
        });
      };

      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

      runApp(
        DevicePreview(
          enabled: true,
          builder: (context) {
            return const RootApp();
          },
        ),
      );
    },
    (error, stackTrace) {
      print('Error: $error');
      print('StackTrace: $stackTrace');
    },
  );
}
