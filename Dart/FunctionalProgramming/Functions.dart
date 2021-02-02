
String scream(int length) => "A${'a' * length}h!";

main() {
  // Case 1
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
  // Case 2
  values.map(scream).forEach(print);
  // Case 3
  values.skip(1).take(3).map(scream).forEach(print);


}


