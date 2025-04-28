class Movie {
  String title;
  String description;
  String imageUrl;
  String releaseDate;
  String genre;
  String id;
  String startTime;

  Movie({
    required this.startTime,
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.releaseDate,
    required this.genre,
  });
}
