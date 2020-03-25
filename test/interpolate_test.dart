import 'package:flutter_test/flutter_test.dart';

import 'package:interpolate/interpolate.dart';

void main() {
  test('interpolate: CLAMP', () {
    final interpolate = Interpolate(
      inputRange: [10, 20, 30],
      outputRange: [1, 0, 1],
      extrapolate: Extrapolate.clamp,
    );
    expect(interpolate.eval(15), 0.5);
    expect(interpolate.eval(50), 1.0);
    expect(interpolate.eval(1), 1);
  });

  test('interpolate: EXTEND', () {
    final interpolate = Interpolate(
      inputRange: [10, 20, 30],
      outputRange: [1, 0, 1],
      extrapolate: Extrapolate.extend,
    );

    expect(interpolate.eval(0), 2);
    expect(interpolate.eval(50), 3);
  });

  test('interpolate: ClampEnd', () {
    final interpolate = Interpolate(
      inputRange: [10, 20, 30],
      outputRange: [1, 0, 1],
      extrapolate: Extrapolate.clampEnd,
    );

    expect(interpolate.eval(0), 2);
    expect(interpolate.eval(50), 1);
  });
  test('interpolate: ClampStart', () {
    final interpolate = Interpolate(
      inputRange: [10, 20, 30],
      outputRange: [1, 0, 1],
      extrapolate: Extrapolate.clampStart,
    );

    expect(interpolate.eval(0), 1);
    expect(interpolate.eval(50), 3);
  });
}
