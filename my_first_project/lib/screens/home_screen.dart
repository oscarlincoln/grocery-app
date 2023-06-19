import 'package:flutter/material.dart';
import 'package:my_first_project/provider/dark_theme_provider.dart';
import 'package:my_first_project/services/dark_theme_prefs.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
          child: SwitchListTile(
        title: const Text('theme'),
        secondary: Icon(themeState.getDarkTheme
            ? Icons.dark_mode_outlined
            : Icons.light_mode_outlined),
        onChanged: (bool value) {
          setState(() {
            
          });
        },
        value: themeState.getDarkTheme,
      )),
    );
  }
}
