class Student {
  String name;
  int age;
  List<String> courses;
  Map<String, String> address;
  Student(this.name, this.age, this.courses, this.address);
}

List<Map<String, dynamic>> students = [
  {
    'name': 'John',
    'age': 21,
    'courses': ['Math', 'English'],
    'address': {'city': 'London', 'country': 'England'}
  },
  {
    'name': 'Mary',
    'age': 20,
    'courses': ['Math', 'English'],
    'address': {'city': 'Paris', 'country': 'France'}
  }
];
void main() {
  List<Student> studentList = students.map((student) {
    return Student(student['name'], student['age'], student['courses'],
        student['address']);
  }).toList();
  for (int i = 0; i < studentList.length; i++) {
    print(studentList[i].name);
    print(studentList[i].age);
    print(studentList[i].courses);
    print(studentList[i].courses[0]);
    print(studentList[i].address);
    print(studentList[i].address['city']);
    print(studentList[i].address['country']);
  }
}
