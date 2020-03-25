# interpolate

A dart plugin to interpolate range of values
## Usage
```dart
import 'package:interpolate/interpolate.dart';

Interpolate interpolate = Interpolate(
    inputRange: [10, 20, 30],
    outputRange: [1, 0, 1],
    extrapolate: Extrapolate.clamp,
);
interpolate.eval(15); // returns 0.5

```
## NOTE
The `inputRange` have to be increasing else it might not get the expected result of might throw an error or returns null;
The length of the outputRange have to be equal to the output range

## The Extrapolate Enum
```dart
enum Extrapolate {
  extend, // No clamping
  clamp, // Clamps both ends
  clampStart, // clamps the value to the start and extend the end
  clampEnd, // clamps the value to the end and extend the start
}

```

