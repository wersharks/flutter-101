void main() {
  //print map of map
  Map<String, Map<String, String>> map = {
    'content1': {'title': 'title1', 'body': 'body1'},
    'content2': {'title': 'title2', 'body': 'body2'},
  };
  print(map['content1']!['title']); //title1
  print(map['content2']!['body']); //body2
  //print map of list
  Map<String, List<String>> map2 = {
    'content1': ['title1', 'body1'],
    'content2': ['title2', 'body2'],
  };
  print(map2['content1']![0]); //title1
  print(map2['content2']![1]); //body2
  //print list of map
  List<Map<String, String>> list = [
    {'title': 'title1', 'body': 'body1'},
    {'title': 'title2', 'body': 'body2'},
  ];
  print(list[0]['title']); //title1
  print(list[1]['body']); //body2
  //print list of list
  List<List<String>> list2 = [
    ['title1', 'body1'],
    ['title2', 'body2'],
  ];
  print(list2[0][0]); //title1
  print(list2[1][1]); //body2
  //print list of list of map
  List<List<Map<String, String>>> list3 = [
    [
      {'title': 'title1', 'body': 'body1'},
      {'title': 'title2', 'body': 'body2'},
    ],
    [
      {'title': 'title1', 'body': 'body1'},
      {'title': 'title2', 'body': 'body2'},
    ],
  ];
  print(list3[0][0]['title']); //title1
  print(list3[1][1]['body']); //body2
  //print list of list of list
  List<List<List<String>>> list4 = [
    [
      ['title1', 'body1'],
      ['title2', 'body2'],
    ],
    [
      ['title1', 'body1'],
      ['title2', 'body2'],
    ],
  ];
  print(list4[0][0][0]); //title1
  print(list4[1][1][1]); //body2
}
