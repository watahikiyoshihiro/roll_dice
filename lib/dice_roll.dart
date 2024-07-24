import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice_roll.g.dart'; //ファイル名を先頭小文字で記載 s1_s2_s3_fileなど

@riverpod
class DiceRollNotifier extends _$DiceRollNotifier {
  //ファイル名を先頭大文字で記載 S1S2S3Fileなど
  @override
  int build() {
    return 1; // 初期値を1に設定
  }

  void roll() {
    state = Random().nextInt(6) + 1; // 1から6の範囲の数字を生成
  }
}