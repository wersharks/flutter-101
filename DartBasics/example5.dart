void main() {
  student s = student(name: "asd", age: 20);
  student s1 = student();
  s1.name = "ayush";
  s1.age = 20;
  s.show();
  s1.show();
}

class student {
  String? name;
  int? age;
  student({this.name, this.age});
  void show() {
    print("Name: $name, Age: $age");
  }
}
