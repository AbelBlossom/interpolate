import 'package:interpolate/interpolate.dart';

main() {
  Interpolate interpolate = Interpolate(
    inputRange: [10, 20, 30],
    outputRange: [1, 0, 1],
    extrapolate: Extrapolate.clamp,
  );
  interpolate.eval(15); // returns 1.5
}
