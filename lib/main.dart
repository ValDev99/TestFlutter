import 'package:flutter/material.dart';
import 'package:todolist_weo/screens/page_accueil.dart';

import 'package:json_theme/json_theme.dart';

import 'package:flutter/services.dart';
import 'dart:convert';

// import 'package:google_sign_in/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/theme.json');

  final themeJson = jsonDecode(themeStr);

  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(
    theme: theme,
  ));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;

  const MyApp({
    super.key,
    required this.theme,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoListWeo',
      home: const pageCo(),
      theme: theme,
    );
  }
}
