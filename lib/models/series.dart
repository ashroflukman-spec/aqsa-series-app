class Series {
  final String id;
  final String title;
  final String description;
  final int totalEpisodes;

  Series({
    required this.id,
    required this.title,
    required this.description,
    required this.totalEpisodes,
  });

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      totalEpisodes: json['totalEpisodes'],
    );
  }
}
