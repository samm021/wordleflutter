import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:wordleflutter/utils/navigator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = MainNavigator();
    return ProviderScope(
      child: MaterialApp(
        navigatorKey: navigator.key,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.orange),
          colorScheme: ColorScheme.fromSwatch(),
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
        home: Container(),
        builder: (BuildContext context, Widget? widget) =>
            OKToast(child: widget!),
      ),
    );
  }
}
