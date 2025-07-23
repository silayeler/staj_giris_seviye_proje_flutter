import 'package:flutter/material.dart';
import 'pages/registration_page.dart'; // dışarıdan import ediyorsun
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kayıt Uygulaması',
      debugShowCheckedModeBanner: false,
      locale: const Locale('tr', 'TR'), // Türkçe dil desteği
      supportedLocales: const [
        Locale('tr', 'TR'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const RegistrationPage(),
    );
  }
}
