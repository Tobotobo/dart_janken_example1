import 'package:test/test.dart';
import 'package:dart_janken_example1/janken.dart';
import 'package:dart_janken_example1/janken_hand.dart';
import 'package:dart_janken_example1/janken_result.dart';

void main() {
  final janken = Janken();
  group('run', () {
    group('正常系', () {
      test('グー', () {
        expect(janken.run(JankenHand.guu, JankenHand.guu), JankenResult.draw);
        expect(janken.run(JankenHand.guu, JankenHand.choki),
            JankenResult.user1Win);
        expect(
            janken.run(JankenHand.guu, JankenHand.paa), JankenResult.user2Win);
      });
      test('チョキ', () {
        expect(janken.run(JankenHand.choki, JankenHand.guu),
            JankenResult.user2Win);
        expect(
            janken.run(JankenHand.choki, JankenHand.choki), JankenResult.draw);
        expect(janken.run(JankenHand.choki, JankenHand.paa),
            JankenResult.user1Win);
      });
      test('パー', () {
        expect(
            janken.run(JankenHand.paa, JankenHand.guu), JankenResult.user1Win);
        expect(janken.run(JankenHand.paa, JankenHand.choki),
            JankenResult.user2Win);
        expect(janken.run(JankenHand.paa, JankenHand.paa), JankenResult.draw);
      });
    });
    test('異常系', () {
      expect(() => janken.run(JankenHand.none, JankenHand.paa),
          throwsArgumentError);
      expect(() => janken.run(JankenHand.guu, JankenHand.none),
          throwsArgumentError);
      expect(() => janken.run(JankenHand.none, JankenHand.none),
          throwsArgumentError);
    });
  });
}
