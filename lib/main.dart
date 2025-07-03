import 'package:flutter/material.dart';
import 'package:flutter_stacked_cli/app/app.bottomsheets.dart';
import 'package:flutter_stacked_cli/app/app.dialogs.dart';
import 'package:flutter_stacked_cli/app/app.locator.dart';
import 'package:flutter_stacked_cli/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
