import 'package:flutter/material.dart';
import 'package:todo_list/app/routes/app_pages.dart';
import 'package:todo_list/app/routes/app_routes.dart';
import 'package:todo_list/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: AppRoutes.init,
      routes: routes,
    );
  }
}
