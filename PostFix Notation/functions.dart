void push({required String value, required int top, required List stack}) {
  top++;
  stack[top] = double.parse(value);
}

void pop({required int top, required List stack}) {
  stack[top] = null;
  top--;
}
