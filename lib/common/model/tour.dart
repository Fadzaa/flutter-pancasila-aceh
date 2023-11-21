class Tour {
  final int id;
  final String name;
  final String cardImage;
  final String description;
  final String cardDescription;
  final List<String> highlightText;
  final List<String> detailImages;

  Tour({
    required this.id,
    required this.name,
    required this.cardImage,
    required this.description,
    required this.cardDescription,
    required this.highlightText,
    required this.detailImages,
  });

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'],
      name: json['name'],
      cardImage: json['card_image'],
      description: json['description'],
      cardDescription: json['card_description'],
      highlightText: List<String>.from(json['highlight_text']),
      detailImages: List<String>.from(json['detail_image']),
    );
  }
}
