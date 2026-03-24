import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/formula_provider.dart';
import 'formula_detail_screen.dart';
import '../../gamification/widgets/profile_badge_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formulasAsync = ref.watch(formulasStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Etkileşimli Formüller'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: const [ProfileBadgeWidget()],
      ),
      body: formulasAsync.when(
        data: (formulas) {
          if (formulas.isEmpty) {
            return const Center(child: Text('Henüz formül bulunmuyor.'));
          }
          return ListView.builder(
            itemCount: formulas.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final formula = formulas[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Text(
                    formula.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '${formula.gradeLevel}. Sınıf - ${formula.category}',
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FormulaDetailScreen(formula: formula),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Hata: $error')),
      ),
    );
  }
}
