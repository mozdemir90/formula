import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/gamification_provider.dart';

class ProfileBadgeWidget extends ConsumerWidget {
  const ProfileBadgeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gamificationState = ref.watch(gamificationProvider);

    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          // XP Göstergesi
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.amber.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text(
                  '${gamificationState.totalXp} XP',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Rozet Göstergesi
          GestureDetector(
            onTap: () {
              _showBadgesDialog(context, gamificationState.unlockedBadgeIds);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.military_tech,
                  size: 32,
                  color: Colors.deepPurple,
                ),
                if (gamificationState.unlockedBadgeIds.isNotEmpty)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${gamificationState.unlockedBadgeIds.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showBadgesDialog(BuildContext context, List<String> unlockedBadgeIds) {
    // Rozet veri tablosu (MVP için lokal harita)
    final badgeData = {
      'badge_apprentice': {
        'title': 'Çırak',
        'desc': 'İlk quizini başarıyla tamamladın!',
      },
      'badge_explorer': {
        'title': 'Kaşif',
        'desc': '5 farklı formülü detaylıca inceledin!',
      },
    };

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Kazanılan Rozetler'),
          content: unlockedBadgeIds.isEmpty
              ? const Text(
                  'Henüz rozet kazanmadın. Formülleri incelemeye ve testleri çözmeye devam et!',
                )
              : SizedBox(
                  width: double.maxFinite,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: unlockedBadgeIds.length,
                    itemBuilder: (context, index) {
                      final badgeId = unlockedBadgeIds[index];
                      final bData = badgeData[badgeId];
                      return ListTile(
                        leading: const Icon(
                          Icons.military_tech,
                          color: Colors.deepPurple,
                          size: 40,
                        ),
                        title: Text(bData?['title'] ?? 'Bilinmeyen Rozet'),
                        subtitle: Text(bData?['desc'] ?? ''),
                      );
                    },
                  ),
                ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );
  }
}
