void main() {
  double pi = 3.14;
  print(pi.floor());
  print(pi.ceil());
  print(pi.round());
  print(pi.truncate());
  List ages = [12, "\$", "14", "ayush", true];
  print(ages);
  List<int> ages1 = [12, 13, 14, 15, 16, 17, 18, 19, 20];
  print(ages1);
  List<String> name = ["ayush", "pandit"];
  print(name);
  print(name[1]);
  name.add("kumar");
  print(name);
  bool result = name.contains("ayush");
  print(result);
  print(name.sublist(0, 1));
  print(name.indexOf("ayush"));
  name.insert(1, "rasumi");
  print(name);
  name.shuffle();
  print(name);
}
