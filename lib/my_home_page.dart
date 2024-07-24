import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dice_roll.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diceNum = ref.watch(diceRollNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Roll Dice'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/apple$diceNum.jpeg', //画像を指定
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              ref.read(diceRollNotifierProvider.notifier).roll();
            },
            icon: const Icon(Icons.face),
            iconSize: 50,
          ),
        ],
      ),
    );
  }
}
