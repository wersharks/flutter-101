//model class
class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

List<Person> student = [
  Person("John", 20),
  Person("Peter", 21),
  Person("Sara", 22),
  Person("Rahul", 23),
  Person("Raj", 24),
];
void main() {
  print("List of students");
  student.forEach((element) => print(element.name));
  print("List of students whose age is greater than 21");
  student
      .where((element) => element.age > 21)
      .forEach((element) => print(element.name));
  print("List of students");
  for (var item in student) {
    print(item.name);
  }
}
