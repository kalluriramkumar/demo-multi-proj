import 'package:project2/src/number_operations.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('test add numbers', () {
    var numberOperation = NumberOperation()
      ..a = 5
      ..b = 2;
    var sum = numberOperation.sum();
    expect(7, sum);
  });

  test('test substract numbers', () {
    var numberOperation = NumberOperation()
      ..a = 5
      ..b = 2;
    var diff = numberOperation.difference();
    expect(3, diff);
  });

  test('test substract numbers', () {
    var numberOperation = NumberOperation()
      ..a = 5
      ..b = 2;
    var multiply = numberOperation.multiply();
    expect(10, multiply);
  });
}
