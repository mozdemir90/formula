import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/formulas/models/math_formula.dart';
import '../../features/gamification/models/gamification.dart';

class DatabaseService {
  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([
      MathFormulaSchema,
      GamificationProgressSchema,
    ], directory: dir.path);
  }
}
