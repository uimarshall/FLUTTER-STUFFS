import '../image_asset.dart';

class Friend {
  final String name;
  final String imagePath;
  final bool isOnline;
  const Friend({this.name, this.imagePath, this.isOnline});
}

final friends = [
  Friend(name: 'Fred', imagePath: dev2, isOnline: true),
  Friend(name: 'Ansalem', imagePath: dev3, isOnline: true),
  Friend(name: 'Dave', imagePath: dev4, isOnline: true),
  Friend(name: 'Eunice', imagePath: dev5, isOnline: true),
  Friend(name: 'Dave', imagePath: dev4, isOnline: true),
  Friend(name: 'Eunice', imagePath: dev5, isOnline: true),
  Friend(name: 'Dave', imagePath: dev4, isOnline: true),
  Friend(name: 'Eunice', imagePath: dev5, isOnline: true),
];
