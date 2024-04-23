import 'package:ecartapp/screens/auth_screen/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'language/app_language_provider.dart';
import 'language/app_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguageProvider appLanguage = AppLanguageProvider();
  await appLanguage.fetchLocale();
  runApp( MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {
  AppLanguageProvider? appLanguage;
  MyApp({super.key, required this.appLanguage});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>appLanguage,
      child: Consumer<AppLanguageProvider>(builder: (context, model, child) {
        return MaterialApp(
          title: 'E Cart',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:
          const OnBoardScreen(),
          locale: model.appLocal,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('pt', 'BR'),
            Locale('es', 'ES'),
            Locale('fr', 'FR'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,

            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
        );
      }),
    );
  }
}