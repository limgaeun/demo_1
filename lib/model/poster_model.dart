class Poster{
  final String title;
  final String keyword;
  final String poster;

  Poster.fromMap(Map<String, dynamic> map)
    : title = map['title'],
      keyword = map['keyword'],
      poster = map['poster'];
}

