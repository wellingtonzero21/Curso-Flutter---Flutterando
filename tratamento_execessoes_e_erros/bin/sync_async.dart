void main() {
  print(stringToInt("j"));
}

int stringToInt(String text) {
  int value;
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception('O texto passado "$text" não é um numero');
  }
  return value;
}
