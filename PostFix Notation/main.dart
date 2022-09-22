import 'functions.dart';
import 'dart:io';

void main() {
  final stack = <double>[];
  double aux;
  var elements = [];
  final int top = -1;
  // final int top = -1;

  print(' Escreva a expressão em notação pós-fixa: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('error: expressão inválida');
  } else {
    elements = input.split(' ');

    for (var element in elements) {
      if (element == "+") {
        aux = stack[top] + stack[top - 1];
        pop(top: top, stack: stack);
        stack[top] = aux;
      } else if (element == "-") {
        aux = stack[top - 1] - stack[top];
        pop(top: top, stack: stack);
      } else if (element == "*") {
        aux = stack[top] * stack[top - 1];
        pop(top: top, stack: stack);
      } else if (element == "/") {
        aux = stack[top - 1] / stack[top];
        pop(top: top, stack: stack);
      } else {
        push(value: element, top: top, stack: stack);
      }
    }
  }
}
