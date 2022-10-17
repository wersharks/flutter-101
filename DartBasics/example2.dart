void main() {
  String name = 'C++ is better language than dart';
  print("name is ${name}");
  print(name.isNotEmpty);
  print(name.length.isEven);
  print(name.contains('C++', 0));
  print(name.endsWith('dart'));
  print(name.indexOf('t', 32));
  print(name.toUpperCase());
  print(name[7].toUpperCase());
  print(name.substring(7, 11));
  print(name.replaceAll('C++', "Dart"));
  print(name.split(' '));
  List j = ["C++", "is", "better", "language", "than", "dart"];
  print(j.join(' '));
}
