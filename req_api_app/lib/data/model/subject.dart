import 'dart:ui';

class Subject {
  final int id;
  final String Slug;
  final String name;
  final String desc;
  final String lecturer;
  final String image;
  final List<Color> gradient;

  Subject({
    required this.id,
    required this.Slug,
    required this.name,
    required this.desc,
    required this.lecturer,
    required this.image,
    required this.gradient,
  });
}
