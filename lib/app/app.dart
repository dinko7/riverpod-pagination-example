import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/app/theme.dart';
import 'package:riverpod_pagination_example/ui/repositories/repositories_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Riverpod Pagination Demo',
        theme: gitHubLightTheme,
        darkTheme: gitHubDarkTheme,
        home: const RepositoriesScreen(),
      ),
    );
  }
}
