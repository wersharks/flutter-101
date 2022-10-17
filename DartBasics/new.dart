class User {
  final int id;
  final String name;
  final String address;
  final String geo;
  User(
      {required this.id,
      required this.name,
      required this.address,
      required this.geo});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      geo: json['geo'],
    );
  }
}

var usercollection = [
  {
    'id': 1,
    'name': 'John',
    'address': '123, Main Street',
    'geo': '123, 456',
  },
  {
    'id': 2,
    'name': 'Jane',
    'address': '456, Main Street',
    'geo': '123, 456',
  },
  {
    'id': 3,
    'name': 'Jack',
    'address': '789, Main Street',
    'geo': '123, 456',
  },
];

void main() {
  var user = User(
      id: 1, name: "Leanne Graham", address: "Kulas Light", geo: "-37.3159");
  print(user.id);
  print(user.name);
  print(user.address);
  print(user.geo);

  //print all usercollection
  usercollection.forEach((user) {
    print(user);
  });
  usercollection.forEach((user) {
    print(
        "id: ${user['id']} name: ${user['name']} address: ${user['address']} geo: ${user['geo']}");
  });

  //print all usercollection using for loop
  for (var i = 0; i < usercollection.length; i++) {
    print(usercollection[i]);
  }
}
