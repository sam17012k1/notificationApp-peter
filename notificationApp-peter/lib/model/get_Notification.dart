class Album {

  final int id;
  final String ticker;
  final String title;
  final String image;
  final String detail1;
  final String detail2;

  Album({
    required this.id,
    required this.ticker,
    required this.title,
    required this.image,
    required this.detail1,
    required this.detail2,
  });

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    id: json["id"],
    ticker: json["ticker"],
    title: json["title"],
    image: json["image"],
    detail1: json["detail1"],
    detail2: json["detail2"],
  );
}
