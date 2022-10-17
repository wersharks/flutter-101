void main() {
  Fruits fruits1 = Fruits('Apple', 'Red');
  fruits1.printFruits();
  List<int> list1 = [1, 2, 3];
  print(list1);
  print(list1[0]);
  Map<String, dynamic> map = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };
  map.forEach((k, v) {
    print('key: $k, value: $v');
  });
  print(map.length);

  map['key4'] = 'value4';
  print(map.length);
  List<Fruits> fruits = [
    Fruits('apple', 'red'),
    Fruits('banana', 'yellow'),
    Fruits('orange', 'orange'),
  ];
  fruits.forEach((fruit) {
    print('name: ${fruit.name}, color: ${fruit.color}');
  });
  map['key5'] = Fruits('name', 'color');
  print(map['key5']);
  Map<String, dynamic> map2 = {};
  map2.addAll(map);
  map2.forEach((k, v) {
    print('key: $k, value: $v');
  });

  List<String> listOfMovies = ['movie1', 'movie2', 'movie3'];

  listOfMovies.forEach((movie) {
    print(movie);
  });
  var mappedMovies = listOfMovies.map((movie) => movie.toUpperCase());
  mappedMovies.forEach((movie) {
    print(movie);
  });
  print(mappedMovies);
  print(mappedMovies.toList());
  print(mappedMovies.toList()[0]);
  Map<Fruits, String> map3 = {
    Fruits('apple', 'red'): 'apple',
    Fruits('banana', 'yellow'): 'banana',
    Fruits('orange', 'orange'): 'orange',
  };
  map3.forEach((k, v) {
    print('key: $k, value: $v');
  });
}

class Fruits {
  String name;
  String color;
  Fruits(this.name, this.color);

  void printFruits() {
    print('name: $name, color: $color');
  }
}
