import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/database/database_service.dart';
import 'core/database/database_provider.dart';
import 'features/formulas/providers/formula_provider.dart';
import 'features/formulas/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final databaseService = DatabaseService();
  await databaseService.init();

  final container = ProviderContainer(
    overrides: [databaseServiceProvider.overrideWithValue(databaseService)],
  );

  // Veritabanını başlangıç verileriyle doldur
  await container.read(formulaRepositoryProvider).seedInitialFormulas();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const InteractiveMathApp(),
    ),
  );
}

class InteractiveMathApp extends StatelessWidget {
  const InteractiveMathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etkileşimli Matematik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
