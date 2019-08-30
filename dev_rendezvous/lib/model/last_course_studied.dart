import '../image_asset.dart';

class LastStudiedCourse {
  final String name;
  final int hoursStudied;
  final String imagePath;
  final double studyProgress;
  const LastStudiedCourse(
      {this.name, this.hoursStudied, this.imagePath, this.studyProgress});
}

final lastStudiedCourses = [
  LastStudiedCourse(
      name: 'JavaScript',
      hoursStudied: 10,
      studyProgress: 0.2,
      imagePath: book_js),
  LastStudiedCourse(
      name: 'NodeJs',
      hoursStudied: 50,
      studyProgress: 0.80,
      imagePath: book_node),
  LastStudiedCourse(
      name: 'Python',
      hoursStudied: 90,
      studyProgress: 0.95,
      imagePath: book_python),
  LastStudiedCourse(
      name: 'React',
      hoursStudied: 3,
      studyProgress: 0.10,
      imagePath: book_react),
];
