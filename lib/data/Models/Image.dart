class Image {
  Image({
    required this.id,
    required this.url,
  });

  final int id;
  final String url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}
