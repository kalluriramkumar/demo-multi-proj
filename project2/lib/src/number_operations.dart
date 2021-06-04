import 'package:project1/project1.dart';

class NumberOperation implements NumberOperationsSpec {
  @override
  int a = 5;

  @override
  int b = 2;

  @override
  int difference() {
    return a - b;
  }

  @override
  int sum() {
    return a + b;
  }

  @override
  int multiply() {
    return (a * b);
  }


}
