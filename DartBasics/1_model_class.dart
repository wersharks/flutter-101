{
"id": 1,
"name": "Leanne Graham",
"address": {
"street": "Kulas Light",
"geo": {
"lat": "-37.3159",
"lng": "81.1496"
        }
          },
}

//access this data 
// Language: dart
Future GetRequest() async {
  var url = 'https://jsonplaceholder.typicode.com/users';
  var response = await http.get(url);
  var jsonData = json.decode(response.body);
  print(jsonData);
  print(jsonData['name']);
  String name = jsonData['address']['geo']['lat'];
  print(name);
  print(jsonData['address']['geo']['lat']);
}

//creating model class
// Language: dart
class User {
  final int id;
  final String name;
  final String address;
  final String geo;
  User({required this.id,required this.name,required this.address,required this.geo});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      geo: json['geo'],
    );
  }
}
