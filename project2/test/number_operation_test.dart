import 'package:project2/src/number_operations.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('test add numbers', () {
    var sum = NumberOperation().sum(2, 3);
    expect(5, sum);
  });

  test('test substract numbers', () {
    var diff = NumberOperation().difference(5, 2);
    expect(3, diff);
  });

  test('multiply',(){
    var multiply = NumberOperation().multiply(5, 2);
    expect(10, multiply);
  });
}
