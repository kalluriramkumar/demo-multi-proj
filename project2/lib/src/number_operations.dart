import 'package:project1/project1.dart';

class NumberOperation implements NumberOperationsSpec {
  @override
  int difference(int a, int b) {
    return a - b;
  }

  @override
  int sum(int a, int b) {
    return a + b;
  }

  @override
  int multiply(int a, int b) {
    return a * b;
  }
}
