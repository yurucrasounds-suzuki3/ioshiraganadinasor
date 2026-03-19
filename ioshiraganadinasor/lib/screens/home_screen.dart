import 'package:flutter/material.dart';
import 'practice_screen.dart';
import 'gacha_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3EA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 8),

              // タイトル
              const Text(
                'ひらがな\nダイナソー',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  height: 1.1,
                ),
              ),

              const SizedBox(height: 20),

              // 恐竜イラスト（仮）
              Expanded(
                child: Center(
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'きょうりゅう',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // 進捗テキスト
              const Text(
                'ガチャまであと 2 かい！',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 16),

              // 進捗バー
              Container(
                width: 140,
                height: 36,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    _progressBox(filled: true),
                    const SizedBox(width: 4),
                    _progressBox(filled: false),
                    const SizedBox(width: 4),
                    _progressBox(filled: false),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ボタン
              Row(
                children: [
                  Expanded(
                    child: _menuButton(
                      label: 'ずかん',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _menuButton(
                      label: 'てがみ',
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 下部エリア
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _bottomItem(
                        icon: Icons.menu_book_rounded,
                        label: 'ずかん',
                      ),
                    ),
                    Container(
                      width: 2,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: _bottomItem(
                        icon: Icons.mail_outline_rounded,
                        label: 'てがみ',
                      ),
                    ),
                  ],
                ),
              ),
const SizedBox(height: 16),
SizedBox(
  width: double.infinity,
  height: 56,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const GachaScreen()),
      );
    },
    child: const Text('ガチャへ'),
  ),
),
SizedBox(
  width: double.infinity,
  height: 56,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const PracticeScreen(),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      side: const BorderSide(color: Colors.black, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    child: const Text(
      'れんしゅうする',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
    ),
  ),
),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _progressBox({required bool filled}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: filled ? Colors.grey.shade700 : Colors.white,
          border: Border.all(color: Colors.black, width: 1.5),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  static Widget _menuButton({
    required String label,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          side: const BorderSide(color: Colors.black, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  

  static Widget _bottomItem({
    required IconData icon,
    required String label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 34),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}