import 'package:dart_janken_example1/janken.dart';
import 'package:dart_janken_example1/janken_hand.dart';

void main(List<String> arguments) {
  final janken = Janken();
  var user1Hand = JankenHand.guu;
  var user2Hand = JankenHand.choki;
  var result = janken.run(user1Hand, user2Hand);
  print('user1Hand = $user1Hand');
  print('user2Hand = $user2Hand');
  print('result = $result');
}
