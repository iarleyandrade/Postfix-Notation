import 'dart:ffi';
import 'dart:io';

void main() {
  final stack = <double>[];
  final elements = [];
  // final int top = -1;

  print(' Write the expression: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('error: invalid expression');
  } else {
    var list = input.split(' ');

    for (var i in list) {}
  }
}
