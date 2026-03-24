import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../formulas/models/math_formula.dart';
import '../providers/gamification_provider.dart';

class QuizScreen extends ConsumerStatefulWidget {
  final MathFormula formula;

  const QuizScreen({super.key, required this.formula});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _isAnswered = false;
  int? _selectedOptionIndex;

  void _submitAnswer(int selectedIndex, int correctIndex, String quizId) {
    if (_isAnswered) return;

    setState(() {
      _isAnswered = true;
      _selectedOptionIndex = selectedIndex;
      if (selectedIndex == correctIndex) {
        _score += 10;
        ref.read(gamificationProvider.notifier).addXpForQuiz(quizId, 10);
      }
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < (widget.formula.quizzes!.length - 1)) {
      setState(() {
        _currentQuestionIndex++;
        _isAnswered = false;
        _selectedOptionIndex = null;
      });
    } else {
      _showResults();
    }
  }

  void _showResults() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Tebrikler!'),
        content: Text('Quiz tamamlandı.\nKazanılan XP: $_score'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              Navigator.of(context).pop(); // Close quiz screen
            },
            child: const Text('Formüle Dön'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.formula.quizzes == null || widget.formula.quizzes!.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Mini Quiz')),
        body: const Center(child: Text('Bu formül için quiz bulunmuyor.')),
      );
    }

    final quiz = widget.formula.quizzes![_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(title: Text('${widget.formula.title} - Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Soru ${_currentQuestionIndex + 1} / ${widget.formula.quizzes!.length}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Text(
              quiz.question ?? '',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            if (quiz.options != null)
              ...quiz.options!.asMap().entries.map((entry) {
                final index = entry.key;
                final optionText = entry.value;

                Color buttonColor = Colors.white;
                if (_isAnswered) {
                  if (index == quiz.correctOptionIndex) {
                    buttonColor = Colors.green.shade100;
                  } else if (index == _selectedOptionIndex) {
                    buttonColor = Colors.red.shade100;
                  }
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: _isAnswered
                        ? null
                        : () => _submitAnswer(
                            index,
                            quiz.correctOptionIndex!,
                            quiz.quizId ?? '',
                          ),
                    child: Text(
                      optionText,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                );
              }),
            const Spacer(),
            if (_isAnswered)
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(
                  _currentQuestionIndex < (widget.formula.quizzes!.length - 1)
                      ? 'Sonraki Soru'
                      : 'Sonuçları Gör',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
