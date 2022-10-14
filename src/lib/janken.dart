import 'janken_hand.dart';
import 'janken_result.dart';

class Janken {
  static const _results = {
    // user1Hand { user2Hand: Result }
    // グー
    JankenHand.guu: {
      JankenHand.guu: JankenResult.draw,
      JankenHand.choki: JankenResult.user1Win,
      JankenHand.paa: JankenResult.user2Win,
    },
    // チョキ
    JankenHand.choki: {
      JankenHand.guu: JankenResult.user2Win,
      JankenHand.choki: JankenResult.draw,
      JankenHand.paa: JankenResult.user1Win,
    },
    // パー
    JankenHand.paa: {
      JankenHand.guu: JankenResult.user1Win,
      JankenHand.choki: JankenResult.user2Win,
      JankenHand.paa: JankenResult.draw,
    }
  };

  JankenResult run(JankenHand user1Hand, JankenHand user2Hand) {
    if (user1Hand == JankenHand.none) {
      throw ArgumentError.value(
          user1Hand.toString(), 'user1Hand', '手が指定されていません。');
    }
    if (user2Hand == JankenHand.none) {
      throw ArgumentError.value(
          user2Hand.toString(), 'user2Hand', '手が指定されていません。');
    }
    final result = _results[user1Hand]![user2Hand]!;
    return result;
  }
}
