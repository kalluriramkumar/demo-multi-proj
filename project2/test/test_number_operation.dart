import 'package:project2/src/number_operations.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('test add numbers', () {
    var sum = NumberOperation().sum(2, 2);
    expect(4, sum);
  });

  test('test substract numbers', () {
    var diff = NumberOperation().sum(5, 2);
    expect(3, diff);
  });
}
